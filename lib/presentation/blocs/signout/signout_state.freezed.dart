// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignOutState {
  SignOutStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignOutStateCopyWith<SignOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutStateCopyWith<$Res> {
  factory $SignOutStateCopyWith(
          SignOutState value, $Res Function(SignOutState) then) =
      _$SignOutStateCopyWithImpl<$Res, SignOutState>;
  @useResult
  $Res call({SignOutStatus status, String? errorMessage});
}

/// @nodoc
class _$SignOutStateCopyWithImpl<$Res, $Val extends SignOutState>
    implements $SignOutStateCopyWith<$Res> {
  _$SignOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignOutStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignOutStateImplCopyWith<$Res>
    implements $SignOutStateCopyWith<$Res> {
  factory _$$SignOutStateImplCopyWith(
          _$SignOutStateImpl value, $Res Function(_$SignOutStateImpl) then) =
      __$$SignOutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignOutStatus status, String? errorMessage});
}

/// @nodoc
class __$$SignOutStateImplCopyWithImpl<$Res>
    extends _$SignOutStateCopyWithImpl<$Res, _$SignOutStateImpl>
    implements _$$SignOutStateImplCopyWith<$Res> {
  __$$SignOutStateImplCopyWithImpl(
      _$SignOutStateImpl _value, $Res Function(_$SignOutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SignOutStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignOutStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignOutStateImpl implements _SignOutState {
  const _$SignOutStateImpl({required this.status, this.errorMessage});

  @override
  final SignOutStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignOutState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutStateImplCopyWith<_$SignOutStateImpl> get copyWith =>
      __$$SignOutStateImplCopyWithImpl<_$SignOutStateImpl>(this, _$identity);
}

abstract class _SignOutState implements SignOutState {
  const factory _SignOutState(
      {required final SignOutStatus status,
      final String? errorMessage}) = _$SignOutStateImpl;

  @override
  SignOutStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignOutStateImplCopyWith<_$SignOutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
