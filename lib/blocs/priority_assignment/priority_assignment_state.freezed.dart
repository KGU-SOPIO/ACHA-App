// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_assignment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriorityAssignmentState {
  PriorityAssignmentStatus get status => throw _privateConstructorUsedError;
  PriorityAssignments? get priorityAssignments =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of PriorityAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityAssignmentStateCopyWith<PriorityAssignmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityAssignmentStateCopyWith<$Res> {
  factory $PriorityAssignmentStateCopyWith(PriorityAssignmentState value,
          $Res Function(PriorityAssignmentState) then) =
      _$PriorityAssignmentStateCopyWithImpl<$Res, PriorityAssignmentState>;
  @useResult
  $Res call(
      {PriorityAssignmentStatus status,
      PriorityAssignments? priorityAssignments,
      String? message});

  $PriorityAssignmentsCopyWith<$Res>? get priorityAssignments;
}

/// @nodoc
class _$PriorityAssignmentStateCopyWithImpl<$Res,
        $Val extends PriorityAssignmentState>
    implements $PriorityAssignmentStateCopyWith<$Res> {
  _$PriorityAssignmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? priorityAssignments = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PriorityAssignmentStatus,
      priorityAssignments: freezed == priorityAssignments
          ? _value.priorityAssignments
          : priorityAssignments // ignore: cast_nullable_to_non_nullable
              as PriorityAssignments?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PriorityAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriorityAssignmentsCopyWith<$Res>? get priorityAssignments {
    if (_value.priorityAssignments == null) {
      return null;
    }

    return $PriorityAssignmentsCopyWith<$Res>(_value.priorityAssignments!,
        (value) {
      return _then(_value.copyWith(priorityAssignments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriorityAssignmentStateImplCopyWith<$Res>
    implements $PriorityAssignmentStateCopyWith<$Res> {
  factory _$$PriorityAssignmentStateImplCopyWith(
          _$PriorityAssignmentStateImpl value,
          $Res Function(_$PriorityAssignmentStateImpl) then) =
      __$$PriorityAssignmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PriorityAssignmentStatus status,
      PriorityAssignments? priorityAssignments,
      String? message});

  @override
  $PriorityAssignmentsCopyWith<$Res>? get priorityAssignments;
}

/// @nodoc
class __$$PriorityAssignmentStateImplCopyWithImpl<$Res>
    extends _$PriorityAssignmentStateCopyWithImpl<$Res,
        _$PriorityAssignmentStateImpl>
    implements _$$PriorityAssignmentStateImplCopyWith<$Res> {
  __$$PriorityAssignmentStateImplCopyWithImpl(
      _$PriorityAssignmentStateImpl _value,
      $Res Function(_$PriorityAssignmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? priorityAssignments = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PriorityAssignmentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PriorityAssignmentStatus,
      priorityAssignments: freezed == priorityAssignments
          ? _value.priorityAssignments
          : priorityAssignments // ignore: cast_nullable_to_non_nullable
              as PriorityAssignments?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PriorityAssignmentStateImpl implements _PriorityAssignmentState {
  const _$PriorityAssignmentStateImpl(
      {required this.status, this.priorityAssignments, this.message});

  @override
  final PriorityAssignmentStatus status;
  @override
  final PriorityAssignments? priorityAssignments;
  @override
  final String? message;

  @override
  String toString() {
    return 'PriorityAssignmentState(status: $status, priorityAssignments: $priorityAssignments, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityAssignmentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priorityAssignments, priorityAssignments) ||
                other.priorityAssignments == priorityAssignments) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, priorityAssignments, message);

  /// Create a copy of PriorityAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityAssignmentStateImplCopyWith<_$PriorityAssignmentStateImpl>
      get copyWith => __$$PriorityAssignmentStateImplCopyWithImpl<
          _$PriorityAssignmentStateImpl>(this, _$identity);
}

abstract class _PriorityAssignmentState implements PriorityAssignmentState {
  const factory _PriorityAssignmentState(
      {required final PriorityAssignmentStatus status,
      final PriorityAssignments? priorityAssignments,
      final String? message}) = _$PriorityAssignmentStateImpl;

  @override
  PriorityAssignmentStatus get status;
  @override
  PriorityAssignments? get priorityAssignments;
  @override
  String? get message;

  /// Create a copy of PriorityAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityAssignmentStateImplCopyWith<_$PriorityAssignmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
