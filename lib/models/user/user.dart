import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String college,
    String? department,
    String? major
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse.success({required User user}) = UserData;
  const factory UserResponse.error({@ResponseCodeConverter() required ResponseCode code}) = UserError;

  factory UserResponse.fromJson(Map<String, dynamic> json) => const _UserResponseConverter().fromJson(json);
}

class _UserResponseConverter implements JsonConverter<UserResponse, Map<String, dynamic>> {
  const _UserResponseConverter();

  @override
  UserResponse fromJson(Map<String, dynamic> json) {
    if (json.containsKey('name')) {
      return UserData(user: User.fromJson(json));
    } else if (json.containsKey('code')) {
      return UserError.fromJson(json);
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toJson(UserResponse object) => object.toJson();
}