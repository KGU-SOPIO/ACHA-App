enum ErrorCode {
  memberNotFound(
    'MEMBER_NOT_FOUND',
    '아차 회원이 아니에요',
  ),
  invalidStudentIdOrPassword(
    'INVALID_STUDENT_ID_OR_PASSWORD',
    '학번 또는 비밀번호가 올바르지 않아요',
  ),
  invalidPassword(
    'INVALID_PASSWORD',
    '비밀번호가 올바르지 않아요',
  ),
  kutisServerError(
    'KUTIS_SERVER_ERROR',
    'KUTIS에서 데이터를 불러오지 못했어요',
  ),
  lmsServerError(
    'LMS_SERVER_ERROR',
    'LMS에서 데이터를 불러오지 못했어요',
  ),
  notificationNotFound(
    'NOTIFICATION_NOT_FOUND',
    '공지사항이 없어요',
  ),
  unknown(
    'UNKNOWN',
    '문제가 발생했어요',
  );

  const ErrorCode(this.value, this.message);

  final String value;
  final String message;

  static ErrorCode fromValue(String value) {
    return ErrorCode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ErrorCode.unknown,
    );
  }
}
