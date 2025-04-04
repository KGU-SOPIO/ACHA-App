import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class FetchCourseListUseCase {
  FetchCourseListUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<Either<String, CourseList>> call() async {
    return await courseRepository.fetchCourseList();
  }
}
