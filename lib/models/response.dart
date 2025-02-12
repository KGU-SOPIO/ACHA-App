import 'package:freezed_annotation/freezed_annotation.dart';

enum ResponseCode {
  memberNotFound('MEMBER_NOT_FOUND', '아차 회원이 아니에요'),
  invalidStudentIdOrPassword('INVALID_STUDENT_ID_OR_PASSWORD', '학번 또는 비밀번호가 올바르지 않아요');

  final String value;
  final String message;
  const ResponseCode(this.value, this.message);

  static ResponseCode fromValue(String value) {
    return ResponseCode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw Exception('알 수 없는 응답코드입니다.'),
    );
  }
}

class ResponseCodeConverter implements JsonConverter<ResponseCode, String> {
  const ResponseCodeConverter();

  @override
  ResponseCode fromJson(String json) => ResponseCode.fromValue(json);

  @override
  String toJson(ResponseCode object) => object.value;
}