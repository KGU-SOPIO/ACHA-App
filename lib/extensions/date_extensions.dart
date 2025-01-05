import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String formatDate({required String pattern}) {
    return DateFormat(pattern, 'ko').format(this);
  }

  String toTimeLeftFormattedTime() {
    return formatDate(pattern: 'a h:m');
  }

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
}