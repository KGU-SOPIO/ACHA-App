import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/repositories/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class NoticeListBloc extends Bloc<NoticeListEvent, NoticeListState> {
  NoticeListBloc({required this.courseRepository, required this.course})
      : super(const NoticeListState(status: NoticeListStatus.loading)) {
    on<FetchNoticeList>(_onFetchNoticeList);
  }

  final CourseRepository courseRepository;
  final Course course;

  /// 공지사항 목록 데이터를 요청합니다.
  Future<void> _onFetchNoticeList(
      FetchNoticeList event, Emitter<NoticeListState> emit) async {
    try {
      final noticeList = await courseRepository.fetchNoticeList(course.code);
      emit(state.copyWith(
          status: NoticeListStatus.loaded, noticeList: noticeList));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: NoticeListStatus.error, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: NoticeListStatus.error, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: NoticeListStatus.error, errorMessage: '공지를 불러오지 못했어요'));
    }
  }
}
