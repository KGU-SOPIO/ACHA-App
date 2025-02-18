import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String name,
    required String college,
    String? department,
    String? major,
    String? affiliation,
  }) = User;

  const factory UserModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = UserError;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      const UserResponseConverter().fromJson(json);
}
