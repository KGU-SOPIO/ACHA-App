import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/course_manager/index.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

class CourseManagerBloc extends Bloc<CourseManagerEvent, CourseManagerState> {
  CourseManagerBloc({required this.courseRepository}) : super(const Initial()) {
    on<Load>(_onLoadCourses);
    on<Update>(_onUpdateCourse);
  }

  final CourseRepository courseRepository;

  Future<void> _onLoadCourses(Load event, Emitter<CourseManagerState> emit) async {
    emit(const CourseManagerState.loading());
    try {
      final courses = await courseRepository.fetchCourses();
      emit(CourseManagerState.loaded(courses: courses));
    } catch (e) {
      emit(CourseManagerState.error(message: e.toString()));
    }
  }

  Future<void> _onUpdateCourse(Update event, Emitter<CourseManagerState> emit) async {
    emit(CourseManagerState.updating(course: event.course));
    try {
      final currentState = state;
      if (currentState is Loaded) {
        final index = currentState.courses.indexWhere((course) => course.code == event.course.code);
        if (index != -1) {
          final updatedCourses = List<Course>.from(currentState.courses);
          updatedCourses[index] = event.course;
          emit(CourseManagerState.loaded(courses: updatedCourses));
        } else {
          emit(CourseManagerState.error(message: '강좌를 찾을 수 없습니다.'));
        }
      } else {
        emit(CourseManagerState.error(message: '강좌 데이터를 불러오지 못했습니다.'));
      }
    } catch (e) {
      emit(CourseManagerState.error(message: e.toString()));
      rethrow;
    }
  }
}