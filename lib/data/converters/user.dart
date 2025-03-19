import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class UserResponseConverter
    implements JsonConverter<UserModel, Map<String, dynamic>> {
  const UserResponseConverter({required this.field});

  final String field;

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return User.fromJson(json);
    } else {
      return UserError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(UserModel object) => object.toJson();
}
