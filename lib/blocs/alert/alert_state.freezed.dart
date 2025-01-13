// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlertState {
  AlertStatus get status => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertStateCopyWith<AlertState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertStateCopyWith<$Res> {
  factory $AlertStateCopyWith(
          AlertState value, $Res Function(AlertState) then) =
      _$AlertStateCopyWithImpl<$Res, AlertState>;
  @useResult
  $Res call({AlertStatus status, bool isEnabled, String? message});
}

/// @nodoc
class _$AlertStateCopyWithImpl<$Res, $Val extends AlertState>
    implements $AlertStateCopyWith<$Res> {
  _$AlertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isEnabled = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AlertStatus,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertStateImplCopyWith<$Res>
    implements $AlertStateCopyWith<$Res> {
  factory _$$AlertStateImplCopyWith(
          _$AlertStateImpl value, $Res Function(_$AlertStateImpl) then) =
      __$$AlertStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AlertStatus status, bool isEnabled, String? message});
}

/// @nodoc
class __$$AlertStateImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$AlertStateImpl>
    implements _$$AlertStateImplCopyWith<$Res> {
  __$$AlertStateImplCopyWithImpl(
      _$AlertStateImpl _value, $Res Function(_$AlertStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isEnabled = null,
    Object? message = freezed,
  }) {
    return _then(_$AlertStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AlertStatus,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AlertStateImpl implements _AlertState {
  const _$AlertStateImpl(
      {required this.status, this.isEnabled = false, this.message});

  @override
  final AlertStatus status;
  @override
  @JsonKey()
  final bool isEnabled;
  @override
  final String? message;

  @override
  String toString() {
    return 'AlertState(status: $status, isEnabled: $isEnabled, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isEnabled, message);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertStateImplCopyWith<_$AlertStateImpl> get copyWith =>
      __$$AlertStateImplCopyWithImpl<_$AlertStateImpl>(this, _$identity);
}

abstract class _AlertState implements AlertState {
  const factory _AlertState(
      {required final AlertStatus status,
      final bool isEnabled,
      final String? message}) = _$AlertStateImpl;

  @override
  AlertStatus get status;
  @override
  bool get isEnabled;
  @override
  String? get message;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertStateImplCopyWith<_$AlertStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
