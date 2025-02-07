import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/notice_list/index.dart';

class NoticeListBloc extends Bloc<NoticeListEvent, NoticeListState> {
  NoticeListBloc({required this.courseRepository, required this.course}) : super(const NoticeListState(status: NoticeListStatus.loading)) {
    on<Fetch>(_onFetchNoticeList);
  }

  final CourseRepository courseRepository;
  final Course course;

  /// 공지사항 목록 데이터를 요청합니다.
  Future<void> _onFetchNoticeList(Fetch event, Emitter<NoticeListState> emit) async {
    try {
      final Notices? notices = await courseRepository.fetchNoticeList(course.code);
      emit(state.copyWith(status: NoticeListStatus.loaded, notices: notices));
    } on DioException catch (e) {
      emit(state.copyWith(status: NoticeListStatus.error, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: NoticeListStatus.error, errorMessage: '공지를 불러오지 못했어요'));
    }
  }
}