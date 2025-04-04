import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'signin.freezed.dart';
part 'signin.g.dart';

@freezed
class SignInResponseModel with _$SignInResponseModel {
  const factory SignInResponseModel.success({
    required String accessToken,
    required String refreshToken,
    required bool extract,
  }) = SignInSuccess;

  const factory SignInResponseModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = SignInError;

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      const SignInResponseConverter(field: 'accessToken').fromJson(json);
}
