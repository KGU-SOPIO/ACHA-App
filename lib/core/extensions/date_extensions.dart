import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  /// 날짜를 주어진 패턴에 맞게 문자열로 변환합니다.
  String formatDate({required String pattern}) =>
      DateFormat(pattern, 'ko').format(this);

  /// 날짜를 지정한 패턴에 맞게 포맷하여 반환합니다.
  String toTimeLeftFormattedTime() => formatDate(pattern: 'a hh:mm');

  /// 오늘을 기준으로 D-Day 문자열로 변환하여 반환합니다.
  String toDDay() {
    final now = DateTime.now();
    final difference =
        this.difference(DateTime(now.year, now.month, now.day)).inDays;

    if (difference == 0) {
      return 'D - Day';
    } else if (difference > 0) {
      return 'D - $difference';
    } else {
      return 'D + ${difference.abs()}';
    }
  }

  /// 날짜가 오늘인지 여부를 반환합니다.
  bool isDDay() {
    final today = DateTime.now();
    return year == today.year && month == today.month && day == today.day;
  }
}
