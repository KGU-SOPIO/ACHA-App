import 'package:acha/data/models/index.dart';

extension ActivityTypeExtension on ActivityType {
  /// 활동 타입에 따라 Svg Asset 경로를 반환합니다.
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
