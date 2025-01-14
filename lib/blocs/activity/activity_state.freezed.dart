// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityState {
  ActivityStatus get status => throw _privateConstructorUsedError;
  Activities? get activities => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call({ActivityStatus status, Activities? activities, String? message});

  $ActivitiesCopyWith<$Res>? get activities;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? activities = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Activities?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivitiesCopyWith<$Res>? get activities {
    if (_value.activities == null) {
      return null;
    }

    return $ActivitiesCopyWith<$Res>(_value.activities!, (value) {
      return _then(_value.copyWith(activities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityStateImplCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$ActivityStateImplCopyWith(
          _$ActivityStateImpl value, $Res Function(_$ActivityStateImpl) then) =
      __$$ActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActivityStatus status, Activities? activities, String? message});

  @override
  $ActivitiesCopyWith<$Res>? get activities;
}

/// @nodoc
class __$$ActivityStateImplCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$ActivityStateImpl>
    implements _$$ActivityStateImplCopyWith<$Res> {
  __$$ActivityStateImplCopyWithImpl(
      _$ActivityStateImpl _value, $Res Function(_$ActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? activities = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ActivityStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Activities?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ActivityStateImpl implements _ActivityState {
  const _$ActivityStateImpl(
      {required this.status, this.activities, this.message});

  @override
  final ActivityStatus status;
  @override
  final Activities? activities;
  @override
  final String? message;

  @override
  String toString() {
    return 'ActivityState(status: $status, activities: $activities, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, activities, message);

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {required final ActivityStatus status,
      final Activities? activities,
      final String? message}) = _$ActivityStateImpl;

  @override
  ActivityStatus get status;
  @override
  Activities? get activities;
  @override
  String? get message;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
