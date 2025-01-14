// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriorityAssignments _$PriorityAssignmentsFromJson(Map<String, dynamic> json) {
  return _PriorityAssignments.fromJson(json);
}

/// @nodoc
mixin _$PriorityAssignments {
  List<PriorityAssignment>? get assignments =>
      throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  /// Serializes this PriorityAssignments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriorityAssignments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityAssignmentsCopyWith<PriorityAssignments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityAssignmentsCopyWith<$Res> {
  factory $PriorityAssignmentsCopyWith(
          PriorityAssignments value, $Res Function(PriorityAssignments) then) =
      _$PriorityAssignmentsCopyWithImpl<$Res, PriorityAssignments>;
  @useResult
  $Res call({List<PriorityAssignment>? assignments, DateTime? deadline});
}

/// @nodoc
class _$PriorityAssignmentsCopyWithImpl<$Res, $Val extends PriorityAssignments>
    implements $PriorityAssignmentsCopyWith<$Res> {
  _$PriorityAssignmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityAssignments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignments = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      assignments: freezed == assignments
          ? _value.assignments
          : assignments // ignore: cast_nullable_to_non_nullable
              as List<PriorityAssignment>?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriorityAssignmentsImplCopyWith<$Res>
    implements $PriorityAssignmentsCopyWith<$Res> {
  factory _$$PriorityAssignmentsImplCopyWith(_$PriorityAssignmentsImpl value,
          $Res Function(_$PriorityAssignmentsImpl) then) =
      __$$PriorityAssignmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PriorityAssignment>? assignments, DateTime? deadline});
}

/// @nodoc
class __$$PriorityAssignmentsImplCopyWithImpl<$Res>
    extends _$PriorityAssignmentsCopyWithImpl<$Res, _$PriorityAssignmentsImpl>
    implements _$$PriorityAssignmentsImplCopyWith<$Res> {
  __$$PriorityAssignmentsImplCopyWithImpl(_$PriorityAssignmentsImpl _value,
      $Res Function(_$PriorityAssignmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityAssignments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignments = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$PriorityAssignmentsImpl(
      assignments: freezed == assignments
          ? _value._assignments
          : assignments // ignore: cast_nullable_to_non_nullable
              as List<PriorityAssignment>?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriorityAssignmentsImpl implements _PriorityAssignments {
  const _$PriorityAssignmentsImpl(
      {final List<PriorityAssignment>? assignments, this.deadline})
      : _assignments = assignments;

  factory _$PriorityAssignmentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriorityAssignmentsImplFromJson(json);

  final List<PriorityAssignment>? _assignments;
  @override
  List<PriorityAssignment>? get assignments {
    final value = _assignments;
    if (value == null) return null;
    if (_assignments is EqualUnmodifiableListView) return _assignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'PriorityAssignments(assignments: $assignments, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityAssignmentsImpl &&
            const DeepCollectionEquality()
                .equals(other._assignments, _assignments) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_assignments), deadline);

  /// Create a copy of PriorityAssignments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityAssignmentsImplCopyWith<_$PriorityAssignmentsImpl> get copyWith =>
      __$$PriorityAssignmentsImplCopyWithImpl<_$PriorityAssignmentsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriorityAssignmentsImplToJson(
      this,
    );
  }
}

abstract class _PriorityAssignments implements PriorityAssignments {
  const factory _PriorityAssignments(
      {final List<PriorityAssignment>? assignments,
      final DateTime? deadline}) = _$PriorityAssignmentsImpl;

  factory _PriorityAssignments.fromJson(Map<String, dynamic> json) =
      _$PriorityAssignmentsImpl.fromJson;

  @override
  List<PriorityAssignment>? get assignments;
  @override
  DateTime? get deadline;

  /// Create a copy of PriorityAssignments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityAssignmentsImplCopyWith<_$PriorityAssignmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriorityAssignment _$PriorityAssignmentFromJson(Map<String, dynamic> json) {
  return _PriorityAssignment.fromJson(json);
}

/// @nodoc
mixin _$PriorityAssignment {
  String get title => throw _privateConstructorUsedError;
  String get course => throw _privateConstructorUsedError;
  String get courseCode => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  /// Serializes this PriorityAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriorityAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityAssignmentCopyWith<PriorityAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityAssignmentCopyWith<$Res> {
  factory $PriorityAssignmentCopyWith(
          PriorityAssignment value, $Res Function(PriorityAssignment) then) =
      _$PriorityAssignmentCopyWithImpl<$Res, PriorityAssignment>;
  @useResult
  $Res call(
      {String title, String course, String courseCode, DateTime deadline});
}

/// @nodoc
class _$PriorityAssignmentCopyWithImpl<$Res, $Val extends PriorityAssignment>
    implements $PriorityAssignmentCopyWith<$Res> {
  _$PriorityAssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? course = null,
    Object? courseCode = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriorityAssignmentImplCopyWith<$Res>
    implements $PriorityAssignmentCopyWith<$Res> {
  factory _$$PriorityAssignmentImplCopyWith(_$PriorityAssignmentImpl value,
          $Res Function(_$PriorityAssignmentImpl) then) =
      __$$PriorityAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String course, String courseCode, DateTime deadline});
}

/// @nodoc
class __$$PriorityAssignmentImplCopyWithImpl<$Res>
    extends _$PriorityAssignmentCopyWithImpl<$Res, _$PriorityAssignmentImpl>
    implements _$$PriorityAssignmentImplCopyWith<$Res> {
  __$$PriorityAssignmentImplCopyWithImpl(_$PriorityAssignmentImpl _value,
      $Res Function(_$PriorityAssignmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? course = null,
    Object? courseCode = null,
    Object? deadline = null,
  }) {
    return _then(_$PriorityAssignmentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriorityAssignmentImpl implements _PriorityAssignment {
  const _$PriorityAssignmentImpl(
      {required this.title,
      required this.course,
      required this.courseCode,
      required this.deadline});

  factory _$PriorityAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriorityAssignmentImplFromJson(json);

  @override
  final String title;
  @override
  final String course;
  @override
  final String courseCode;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'PriorityAssignment(title: $title, course: $course, courseCode: $courseCode, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityAssignmentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, course, courseCode, deadline);

  /// Create a copy of PriorityAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityAssignmentImplCopyWith<_$PriorityAssignmentImpl> get copyWith =>
      __$$PriorityAssignmentImplCopyWithImpl<_$PriorityAssignmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriorityAssignmentImplToJson(
      this,
    );
  }
}

abstract class _PriorityAssignment implements PriorityAssignment {
  const factory _PriorityAssignment(
      {required final String title,
      required final String course,
      required final String courseCode,
      required final DateTime deadline}) = _$PriorityAssignmentImpl;

  factory _PriorityAssignment.fromJson(Map<String, dynamic> json) =
      _$PriorityAssignmentImpl.fromJson;

  @override
  String get title;
  @override
  String get course;
  @override
  String get courseCode;
  @override
  DateTime get deadline;

  /// Create a copy of PriorityAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityAssignmentImplCopyWith<_$PriorityAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
