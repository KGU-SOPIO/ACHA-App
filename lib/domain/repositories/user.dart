import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/exceptions/index.dart';

class UserRepository {
  final Dio _dio = GetIt.I<Dio>();

  /// 사용자 데이터를 요청합니다.
  Future<User> fetchUser() async {
    try {
      final response = await _dio.get(UserApiEndpoints.user);
      return User.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('학생 정보를 불러오지 못했어요');
    }
  }
}
