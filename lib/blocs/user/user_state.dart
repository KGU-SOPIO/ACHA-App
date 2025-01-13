import 'package:acha/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

enum UserStatus { loading, loaded, error }

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserStatus status,
    User? user,
    String? message
  }) = _UserState;
}