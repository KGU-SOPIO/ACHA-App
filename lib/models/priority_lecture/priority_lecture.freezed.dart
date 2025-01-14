// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_lecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriorityLectures _$PriorityLecturesFromJson(Map<String, dynamic> json) {
  return _PriorityLectures.fromJson(json);
}

/// @nodoc
mixin _$PriorityLectures {
  List<PriorityLecture>? get lectures => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  /// Serializes this PriorityLectures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriorityLectures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityLecturesCopyWith<PriorityLectures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityLecturesCopyWith<$Res> {
  factory $PriorityLecturesCopyWith(
          PriorityLectures value, $Res Function(PriorityLectures) then) =
      _$PriorityLecturesCopyWithImpl<$Res, PriorityLectures>;
  @useResult
  $Res call({List<PriorityLecture>? lectures, DateTime? deadline});
}

/// @nodoc
class _$PriorityLecturesCopyWithImpl<$Res, $Val extends PriorityLectures>
    implements $PriorityLecturesCopyWith<$Res> {
  _$PriorityLecturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityLectures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lectures = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      lectures: freezed == lectures
          ? _value.lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<PriorityLecture>?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriorityLecturesImplCopyWith<$Res>
    implements $PriorityLecturesCopyWith<$Res> {
  factory _$$PriorityLecturesImplCopyWith(_$PriorityLecturesImpl value,
          $Res Function(_$PriorityLecturesImpl) then) =
      __$$PriorityLecturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PriorityLecture>? lectures, DateTime? deadline});
}

/// @nodoc
class __$$PriorityLecturesImplCopyWithImpl<$Res>
    extends _$PriorityLecturesCopyWithImpl<$Res, _$PriorityLecturesImpl>
    implements _$$PriorityLecturesImplCopyWith<$Res> {
  __$$PriorityLecturesImplCopyWithImpl(_$PriorityLecturesImpl _value,
      $Res Function(_$PriorityLecturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityLectures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lectures = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$PriorityLecturesImpl(
      lectures: freezed == lectures
          ? _value._lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<PriorityLecture>?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriorityLecturesImpl implements _PriorityLectures {
  const _$PriorityLecturesImpl(
      {final List<PriorityLecture>? lectures, this.deadline})
      : _lectures = lectures;

  factory _$PriorityLecturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriorityLecturesImplFromJson(json);

  final List<PriorityLecture>? _lectures;
  @override
  List<PriorityLecture>? get lectures {
    final value = _lectures;
    if (value == null) return null;
    if (_lectures is EqualUnmodifiableListView) return _lectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'PriorityLectures(lectures: $lectures, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityLecturesImpl &&
            const DeepCollectionEquality().equals(other._lectures, _lectures) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lectures), deadline);

  /// Create a copy of PriorityLectures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityLecturesImplCopyWith<_$PriorityLecturesImpl> get copyWith =>
      __$$PriorityLecturesImplCopyWithImpl<_$PriorityLecturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriorityLecturesImplToJson(
      this,
    );
  }
}

abstract class _PriorityLectures implements PriorityLectures {
  const factory _PriorityLectures(
      {final List<PriorityLecture>? lectures,
      final DateTime? deadline}) = _$PriorityLecturesImpl;

  factory _PriorityLectures.fromJson(Map<String, dynamic> json) =
      _$PriorityLecturesImpl.fromJson;

  @override
  List<PriorityLecture>? get lectures;
  @override
  DateTime? get deadline;

  /// Create a copy of PriorityLectures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityLecturesImplCopyWith<_$PriorityLecturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriorityLecture _$PriorityLectureFromJson(Map<String, dynamic> json) {
  return _PriorityLecture.fromJson(json);
}

/// @nodoc
mixin _$PriorityLecture {
  String get title => throw _privateConstructorUsedError;
  String get course => throw _privateConstructorUsedError;
  String get courseCode => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  /// Serializes this PriorityLecture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriorityLecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityLectureCopyWith<PriorityLecture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityLectureCopyWith<$Res> {
  factory $PriorityLectureCopyWith(
          PriorityLecture value, $Res Function(PriorityLecture) then) =
      _$PriorityLectureCopyWithImpl<$Res, PriorityLecture>;
  @useResult
  $Res call(
      {String title, String course, String courseCode, DateTime deadline});
}

/// @nodoc
class _$PriorityLectureCopyWithImpl<$Res, $Val extends PriorityLecture>
    implements $PriorityLectureCopyWith<$Res> {
  _$PriorityLectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityLecture
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
abstract class _$$PriorityLectureImplCopyWith<$Res>
    implements $PriorityLectureCopyWith<$Res> {
  factory _$$PriorityLectureImplCopyWith(_$PriorityLectureImpl value,
          $Res Function(_$PriorityLectureImpl) then) =
      __$$PriorityLectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String course, String courseCode, DateTime deadline});
}

/// @nodoc
class __$$PriorityLectureImplCopyWithImpl<$Res>
    extends _$PriorityLectureCopyWithImpl<$Res, _$PriorityLectureImpl>
    implements _$$PriorityLectureImplCopyWith<$Res> {
  __$$PriorityLectureImplCopyWithImpl(
      _$PriorityLectureImpl _value, $Res Function(_$PriorityLectureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityLecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? course = null,
    Object? courseCode = null,
    Object? deadline = null,
  }) {
    return _then(_$PriorityLectureImpl(
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
class _$PriorityLectureImpl implements _PriorityLecture {
  const _$PriorityLectureImpl(
      {required this.title,
      required this.course,
      required this.courseCode,
      required this.deadline});

  factory _$PriorityLectureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriorityLectureImplFromJson(json);

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
    return 'PriorityLecture(title: $title, course: $course, courseCode: $courseCode, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityLectureImpl &&
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

  /// Create a copy of PriorityLecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityLectureImplCopyWith<_$PriorityLectureImpl> get copyWith =>
      __$$PriorityLectureImplCopyWithImpl<_$PriorityLectureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriorityLectureImplToJson(
      this,
    );
  }
}

abstract class _PriorityLecture implements PriorityLecture {
  const factory _PriorityLecture(
      {required final String title,
      required final String course,
      required final String courseCode,
      required final DateTime deadline}) = _$PriorityLectureImpl;

  factory _PriorityLecture.fromJson(Map<String, dynamic> json) =
      _$PriorityLectureImpl.fromJson;

  @override
  String get title;
  @override
  String get course;
  @override
  String get courseCode;
  @override
  DateTime get deadline;

  /// Create a copy of PriorityLecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityLectureImplCopyWith<_$PriorityLectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
