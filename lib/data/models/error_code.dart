enum ErrorCode {
  memberNotFound(
    'MEMBER_NOT_FOUND',
    '아차 회원이 아니에요',
  ),
  invalidStudentIdOrPassword(
    'INVALID_STUDENT_ID_OR_PASSWORD',
    '학번 또는 비밀번호가 올바르지 않아요',
  );

  final String value;
  final String message;
  const ErrorCode(this.value, this.message);

  static ErrorCode fromValue(String value) {
    return ErrorCode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw Exception('알 수 없는 응답코드입니다.'),
    );
  }
}
