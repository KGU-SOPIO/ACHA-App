import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class FetchNoticeListUseCase {
  FetchNoticeListUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<Either<String, NoticeList>> call(String courseCode) async {
    return await courseRepository.fetchNoticeList(courseCode);
  }
}
