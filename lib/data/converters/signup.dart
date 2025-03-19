import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class SignUpResponseConverter
    implements JsonConverter<SignUpResponseModel, Map<String, dynamic>> {
  const SignUpResponseConverter({required this.field});

  final String field;

  @override
  SignUpResponseModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return SignUpResponse.fromJson(json);
    } else {
      return SignUpError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(SignUpResponseModel object) => object.toJson();
}
