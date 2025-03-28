import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc({
    required CourseRepository courseRepository,
    required this.course,
  }) : super(CourseState(status: CourseStatus.loading, course: course)) {
    _fetchCourseActivitiesUseCase = FetchCourseActivitiesUseCase(
      courseRepository: courseRepository,
    );

    on<FetchCourseActivities>(_onFetchCourseActivities);
  }

  late final FetchCourseActivitiesUseCase _fetchCourseActivitiesUseCase;
  final Course course;

  /// 활동 데이터를 요청합니다.
  Future<void> _onFetchCourseActivities(
    FetchCourseActivities event,
    Emitter<CourseState> emit,
  ) async {
    try {
      final result = await _fetchCourseActivitiesUseCase.call(course.code);
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: CourseStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: CourseStatus.loaded,
          course: course.copyWith(courseActivityList: value),
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: CourseStatus.error,
        errorMessage: '활동을 불러오지 못했어요',
      ));
    }
  }
}
