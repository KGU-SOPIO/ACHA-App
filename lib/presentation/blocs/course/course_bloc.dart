import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc({required this.courseRepository, required this.course})
      : super(CourseState(status: CourseStatus.loading, course: course)) {
    on<FetchCourseActivities>(_onFetchCourseActivities);
  }

  final CourseRepository courseRepository;
  final Course course;

  /// 활동 데이터를 요청합니다.
  Future<void> _onFetchCourseActivities(
      FetchCourseActivities event, Emitter<CourseState> emit) async {
    try {
      final courseActivities =
          await courseRepository.fetchCourseActivities(course.code);
      emit(state.copyWith(
          status: CourseStatus.loaded,
          course: course.copyWith(courseActivities: courseActivities)));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: CourseStatus.error, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(status: CourseStatus.error, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: CourseStatus.error, errorMessage: '활동을 불러오지 못했어요'));
    }
  }
}
