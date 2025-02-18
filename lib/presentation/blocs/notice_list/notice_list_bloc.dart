import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class NoticeListBloc extends Bloc<NoticeListEvent, NoticeListState> {
  NoticeListBloc({
    required CourseRepository courseRepository,
    required this.course,
  }) : super(const NoticeListState(status: NoticeListStatus.loading)) {
    _fetchNoticeListUseCase = FetchNoticeListUseCase(
      courseRepository: courseRepository,
    );

    on<FetchNoticeList>(_onFetchNoticeList);
  }

  late final FetchNoticeListUseCase _fetchNoticeListUseCase;
  final Course course;

  /// 공지사항 목록 데이터를 요청합니다.
  Future<void> _onFetchNoticeList(
    FetchNoticeList event,
    Emitter<NoticeListState> emit,
  ) async {
    try {
      final result = await _fetchNoticeListUseCase.call(course.id);
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: NoticeListStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: NoticeListStatus.loaded,
          noticeList: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: NoticeListStatus.error,
        errorMessage: '공지를 불러오지 못했어요',
      ));
    }
  }
}
