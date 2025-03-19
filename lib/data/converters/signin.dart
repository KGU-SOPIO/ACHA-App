import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class SignInResponseConverter
    implements JsonConverter<SignInResponseModel, Map<String, dynamic>> {
  const SignInResponseConverter({required this.field});

  final String field;

  @override
  SignInResponseModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return SignInSuccess.fromJson(json);
    } else {
      return SignInError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(SignInResponseModel object) => object.toJson();
}
