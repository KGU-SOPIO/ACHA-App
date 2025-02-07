import 'package:acha/models/index.dart';

extension ActivityTypeExtension on ActivityType {
  String get svgPath {
    switch (this) {
      case ActivityType.url:
        return 'lib/assets/svgs/course/url.svg';
      case ActivityType.file:
        return 'lib/assets/svgs/course/file.svg';
      case ActivityType.lecture:
        return 'lib/assets/svgs/course/lecture.svg';
      case ActivityType.assignment:
        return 'lib/assets/svgs/course/assignment.svg';
    }
  }
}