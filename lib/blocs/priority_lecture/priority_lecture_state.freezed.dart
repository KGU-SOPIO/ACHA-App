// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_lecture_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriorityLectureState {
  PriorityLectureStatus get status => throw _privateConstructorUsedError;
  PriorityLectures? get priorityLectures => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of PriorityLectureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityLectureStateCopyWith<PriorityLectureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityLectureStateCopyWith<$Res> {
  factory $PriorityLectureStateCopyWith(PriorityLectureState value,
          $Res Function(PriorityLectureState) then) =
      _$PriorityLectureStateCopyWithImpl<$Res, PriorityLectureState>;
  @useResult
  $Res call(
      {PriorityLectureStatus status,
      PriorityLectures? priorityLectures,
      String? message});

  $PriorityLecturesCopyWith<$Res>? get priorityLectures;
}

/// @nodoc
class _$PriorityLectureStateCopyWithImpl<$Res,
        $Val extends PriorityLectureState>
    implements $PriorityLectureStateCopyWith<$Res> {
  _$PriorityLectureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityLectureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? priorityLectures = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PriorityLectureStatus,
      priorityLectures: freezed == priorityLectures
          ? _value.priorityLectures
          : priorityLectures // ignore: cast_nullable_to_non_nullable
              as PriorityLectures?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PriorityLectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriorityLecturesCopyWith<$Res>? get priorityLectures {
    if (_value.priorityLectures == null) {
      return null;
    }

    return $PriorityLecturesCopyWith<$Res>(_value.priorityLectures!, (value) {
      return _then(_value.copyWith(priorityLectures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriorityLectureStateImplCopyWith<$Res>
    implements $PriorityLectureStateCopyWith<$Res> {
  factory _$$PriorityLectureStateImplCopyWith(_$PriorityLectureStateImpl value,
          $Res Function(_$PriorityLectureStateImpl) then) =
      __$$PriorityLectureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PriorityLectureStatus status,
      PriorityLectures? priorityLectures,
      String? message});

  @override
  $PriorityLecturesCopyWith<$Res>? get priorityLectures;
}

/// @nodoc
class __$$PriorityLectureStateImplCopyWithImpl<$Res>
    extends _$PriorityLectureStateCopyWithImpl<$Res, _$PriorityLectureStateImpl>
    implements _$$PriorityLectureStateImplCopyWith<$Res> {
  __$$PriorityLectureStateImplCopyWithImpl(_$PriorityLectureStateImpl _value,
      $Res Function(_$PriorityLectureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityLectureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? priorityLectures = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PriorityLectureStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PriorityLectureStatus,
      priorityLectures: freezed == priorityLectures
          ? _value.priorityLectures
          : priorityLectures // ignore: cast_nullable_to_non_nullable
              as PriorityLectures?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PriorityLectureStateImpl implements _PriorityLectureState {
  const _$PriorityLectureStateImpl(
      {required this.status, this.priorityLectures, this.message});

  @override
  final PriorityLectureStatus status;
  @override
  final PriorityLectures? priorityLectures;
  @override
  final String? message;

  @override
  String toString() {
    return 'PriorityLectureState(status: $status, priorityLectures: $priorityLectures, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityLectureStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priorityLectures, priorityLectures) ||
                other.priorityLectures == priorityLectures) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, priorityLectures, message);

  /// Create a copy of PriorityLectureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityLectureStateImplCopyWith<_$PriorityLectureStateImpl>
      get copyWith =>
          __$$PriorityLectureStateImplCopyWithImpl<_$PriorityLectureStateImpl>(
              this, _$identity);
}

abstract class _PriorityLectureState implements PriorityLectureState {
  const factory _PriorityLectureState(
      {required final PriorityLectureStatus status,
      final PriorityLectures? priorityLectures,
      final String? message}) = _$PriorityLectureStateImpl;

  @override
  PriorityLectureStatus get status;
  @override
  PriorityLectures? get priorityLectures;
  @override
  String? get message;

  /// Create a copy of PriorityLectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityLectureStateImplCopyWith<_$PriorityLectureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
