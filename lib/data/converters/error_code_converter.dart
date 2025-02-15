import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class ErrorCodeConverter implements JsonConverter<ErrorCode, String> {
  const ErrorCodeConverter();

  @override
  ErrorCode fromJson(String json) => ErrorCode.fromValue(json);

  @override
  String toJson(ErrorCode object) => object.value;
}
