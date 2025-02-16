import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup.freezed.dart';
part 'signup.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required String accessToken,
    required String refreshToken,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
