import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class FetchActivitiesUseCase {
  FetchActivitiesUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<Either<String, ActivityList>> call() async {
    return await courseRepository.fetchActivities();
  }
}

class FetchCourseActivitiesUseCase {
  FetchCourseActivitiesUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<Either<String, CourseActivityList>> call(int id) async {
    return await courseRepository.fetchCourseActivities(id);
  }
}
