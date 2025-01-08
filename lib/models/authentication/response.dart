import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@Freezed(unionKey: 'result', unionValueCase: FreezedUnionCase.pascal)
class AuthenticationResponse with _$AuthenticationResponse {
  @FreezedUnionValue('success')
  const factory AuthenticationResponse.success({
    required String accessToken,
    required String refreshToken
  }) = AuthenticationSuccessResponse;

  @FreezedUnionValue('signup')
  const factory AuthenticationResponse.signup({
    required String name,
    required String college,
    required String department,
    required String? major
  }) = AuthenticationSignUpResponse;

  @FreezedUnionValue('refresh')
  const factory AuthenticationResponse.refresh({
    required String accessToken
  }) = AuthenticationRefreshResponse;

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) => _$AuthenticationResponseFromJson(json);
}