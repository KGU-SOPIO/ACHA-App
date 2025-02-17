import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required this.dio});

  final Dio dio;

  /// 사용자 데이터를 요청합니다.
  @override
  Future<Either<String, User>> fetchUser() async {
    try {
      final response = await dio.get(UserApiEndpoints.user);

      final parsedData = UserModel.fromJson(response.data);
      return parsedData.map(
        (user) => Right(user),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('학생 정보를 불러오지 못했어요');
    }
  }
}
