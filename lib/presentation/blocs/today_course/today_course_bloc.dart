import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class TodayCourseBloc extends Bloc<TodayCourseEvent, TodayCourseState> {
  TodayCourseBloc({
    required CourseRepository courseRepository,
  }) : super(const TodayCourseState(status: TodayCourseStatus.loading)) {
    _fetchTodayCoursesUseCase = FetchTodayCoursesUseCase(
      courseRepository: courseRepository,
    );

    on<FetchTodayCourses>(_onFetchTodayCourses);
  }

  late final FetchTodayCoursesUseCase _fetchTodayCoursesUseCase;

  /// 오늘의 강의 정보를 요청합니다.
  Future<void> _onFetchTodayCourses(
    FetchTodayCourses event,
    Emitter<TodayCourseState> emit,
  ) async {
    try {
      final result = await _fetchTodayCoursesUseCase.call();
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: TodayCourseStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: TodayCourseStatus.loaded,
          todayCourses: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: TodayCourseStatus.error,
        errorMessage: '오늘의 강의 정보를 불러오지 못했어요',
      ));
    }
  }
}
