import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

import 'package:acha/blocs/notice/index.dart';

class NoticeBloc extends Bloc<NoticeEvent, NoticeState> {
  NoticeBloc({required this.courseRepository, required this.course, required this.noticeId}) : super(const NoticeState(status: NoticeStatus.loading)) {
    on<Fetch>(_onFetchNotice);
  }

  final CourseRepository courseRepository;
  final Course course;
  final int noticeId; 

  /// 공지사항 데이터를 요청합니다.
  Future<void> _onFetchNotice(Fetch event, Emitter<NoticeState> emit) async {
    try {
      final Notice notice = await courseRepository.fetchNotice(course.code, noticeId);
      emit(state.copyWith(status: NoticeStatus.loaded, notice: notice));
    } on DioException catch (e) {
      emit(state.copyWith(status: NoticeStatus.error, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: NoticeStatus.error, errorMessage: '공지사항을 불러오지 못했어요'));
    }
  }
}