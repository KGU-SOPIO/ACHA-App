import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class NoticeBloc extends Bloc<NoticeEvent, NoticeState> {
  NoticeBloc({
    required CourseRepository courseRepository,
    required this.course,
    required this.noticeId,
  }) : super(const NoticeState(status: NoticeStatus.loading)) {
    _fetchNoticeUseCase = FetchNoticeUseCase(
      courseRepository: courseRepository,
    );

    on<FetchNotice>(_onFetchNotice);
  }

  late final FetchNoticeUseCase _fetchNoticeUseCase;
  final Course course;
  final int noticeId;

  /// 공지사항 데이터를 요청합니다.
  Future<void> _onFetchNotice(
    FetchNotice event,
    Emitter<NoticeState> emit,
  ) async {
    try {
      final result = await _fetchNoticeUseCase.call(noticeId);
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: NoticeStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: NoticeStatus.loaded,
          notice: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: NoticeStatus.error,
        errorMessage: '공지사항을 불러오지 못했어요',
      ));
    }
  }
}
