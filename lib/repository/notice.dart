import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';

import 'package:acha/constants/apis/index.dart';

class NoticeRepository {
  final Dio _dio = GetIt.I<Dio>();

  Future<Notices> fetchNoticeList(String courseCode) async {
    try {
      final response = await _dio.get(NoticeApiEndpoints.noticeListDetail(courseCode));
      return Notices.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('공지를 불러오지 못했어요');
    }
  }

  Future<Notice> fetchNotice(String courseCode, String noticeId) async {
    try {
      final response = await _dio.get(NoticeApiEndpoints.noticeDetail(courseCode, noticeId));
      return Notice.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('공지를 불러오지 못했어요');
    }
  }
}