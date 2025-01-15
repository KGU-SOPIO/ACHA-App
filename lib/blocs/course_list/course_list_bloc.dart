import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/course_list/index.dart';

class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  CourseListBloc({required this.courseRepository}) : super(const CourseListState(status: CourseListStatus.loading)) {
    on<Fetch>(_onFetchCourses);
  }

  final CourseRepository courseRepository;

  Future<void> _onFetchCourses(Fetch event, Emitter<CourseListState> emit) async {
    try {
      final Courses courses = await courseRepository.fetchCourses();
      emit(state.copyWith(status: CourseListStatus.loaded, courses: courses));
    } on DioException catch (e) {
      emit(state.copyWith(status: CourseListStatus.error, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: CourseListStatus.error, errorMessage: '강좌를 불러오지 못했어요'));
    }
  }
}