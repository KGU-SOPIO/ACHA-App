import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'signup.freezed.dart';
part 'signup.g.dart';

@freezed
class SignUpResponseModel with _$SignUpResponseModel {
  const factory SignUpResponseModel({
    required String accessToken,
    required String refreshToken,
  }) = SignUpResponse;

  const factory SignUpResponseModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = SignUpError;

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      const SignUpResponseConverter().fromJson(json);
}
