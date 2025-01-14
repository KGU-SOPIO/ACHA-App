import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/course_manager/index.dart';

class CourseManagerBloc extends Bloc<CourseManagerEvent, CourseManagerState> {
  CourseManagerBloc({required this.courseRepository}) : super(const CourseManagerState(status: CourseManagerStatus.loading)) {
    on<Fetch>(_onFetchCourses);
  }

  final CourseRepository courseRepository;

  Future<void> _onFetchCourses(Fetch event, Emitter<CourseManagerState> emit) async {
    try {
      final Courses courses = await courseRepository.fetchCourses();
      emit(state.copyWith(status: CourseManagerStatus.loaded, courses: courses));
    } on DioException catch (e) {
      emit(state.copyWith(status: CourseManagerStatus.error, message: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: CourseManagerStatus.error, message: '강좌를 불러오지 못했어요'));
    }
  }
}