import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/course/index.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc({required this.courseRepository, required this.course}) : super(CourseState.loaded(course: course)) {
    on<UpdateNotices>(_onUpdateNotices);
  }

  final CourseRepository courseRepository;
  Course course;

  Future<void> _onUpdateNotices(UpdateNotices event, Emitter<CourseState> emit) async {
    emit(const CourseState.loadingNotices());
    try {
      final notices = await courseRepository.fetchNotices(course.code!);
      course = course.copyWith(notices: notices);
      emit(CourseState.loaded(course: course));
    } catch (e) {
      emit(CourseState.error(message: e.toString()));
      rethrow;
    }
  }
}