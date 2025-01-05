import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String formatDate({required String pattern}) => DateFormat(pattern, 'ko').format(this);

  String toTimeLeftFormattedTime() => formatDate(pattern: 'a hh : mm');

  String toDDay() {
    final difference = this.difference(DateTime.now()).inDays;

    if (difference == 0) {
      return "D - Day";
    } else if (difference > 0) {
      return "D - $difference";
    } else {
      return "D + ${difference.abs()}";
    }
  }

  bool isDDay() {
    final today = DateTime.now();
    return year == today.year && month == today.month && day == today.day;
  }
}