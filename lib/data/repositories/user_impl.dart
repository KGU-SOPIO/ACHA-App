import 'package:dio/dio.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/exceptions/index.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required this.dio});

  final Dio dio;

  /// 사용자 데이터를 요청합니다.
  @override
  Future<User> fetchUser() async {
    try {
      final response = await dio.get(UserApiEndpoints.user);
      return User.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('학생 정보를 불러오지 못했어요');
    }
  }
}
