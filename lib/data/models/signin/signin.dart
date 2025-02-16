import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'signin.freezed.dart';
part 'signin.g.dart';

@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse.success({
    required String accessToken,
    required String refreshToken,
  }) = SignInSuccess;
  const factory SignInResponse.fetchUserData({
    @ErrorCodeConverter() required ErrorCode code,
  }) = FetchUserData;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      const _SignInResponseConverter().fromJson(json);
}

class _SignInResponseConverter
    implements JsonConverter<SignInResponse, Map<String, dynamic>> {
  const _SignInResponseConverter();

  @override
  SignInResponse fromJson(Map<String, dynamic> json) {
    if (json.containsKey('accessToken')) {
      return SignInSuccess.fromJson(json);
    } else if (json.containsKey('code')) {
      return FetchUserData.fromJson(json);
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toJson(SignInResponse object) => object.toJson();
}
