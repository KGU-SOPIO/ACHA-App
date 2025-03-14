import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class FetchNoticeUseCase {
  FetchNoticeUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<Either<String, Notice>> call(String courseCode, int noticeId) async {
    return await courseRepository.fetchNotice(courseCode, noticeId);
  }
}
