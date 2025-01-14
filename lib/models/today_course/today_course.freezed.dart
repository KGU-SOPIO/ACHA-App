// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodayCourses _$TodayCoursesFromJson(Map<String, dynamic> json) {
  return _TodayCourses.fromJson(json);
}

/// @nodoc
mixin _$TodayCourses {
  List<TodayCourse>? get courses => throw _privateConstructorUsedError;

  /// Serializes this TodayCourses to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodayCourses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayCoursesCopyWith<TodayCourses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayCoursesCopyWith<$Res> {
  factory $TodayCoursesCopyWith(
          TodayCourses value, $Res Function(TodayCourses) then) =
      _$TodayCoursesCopyWithImpl<$Res, TodayCourses>;
  @useResult
  $Res call({List<TodayCourse>? courses});
}

/// @nodoc
class _$TodayCoursesCopyWithImpl<$Res, $Val extends TodayCourses>
    implements $TodayCoursesCopyWith<$Res> {
  _$TodayCoursesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayCourses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<TodayCourse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodayCoursesImplCopyWith<$Res>
    implements $TodayCoursesCopyWith<$Res> {
  factory _$$TodayCoursesImplCopyWith(
          _$TodayCoursesImpl value, $Res Function(_$TodayCoursesImpl) then) =
      __$$TodayCoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodayCourse>? courses});
}

/// @nodoc
class __$$TodayCoursesImplCopyWithImpl<$Res>
    extends _$TodayCoursesCopyWithImpl<$Res, _$TodayCoursesImpl>
    implements _$$TodayCoursesImplCopyWith<$Res> {
  __$$TodayCoursesImplCopyWithImpl(
      _$TodayCoursesImpl _value, $Res Function(_$TodayCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodayCourses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_$TodayCoursesImpl(
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<TodayCourse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayCoursesImpl implements _TodayCourses {
  const _$TodayCoursesImpl({final List<TodayCourse>? courses})
      : _courses = courses;

  factory _$TodayCoursesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayCoursesImplFromJson(json);

  final List<TodayCourse>? _courses;
  @override
  List<TodayCourse>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodayCourses(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayCoursesImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of TodayCourses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayCoursesImplCopyWith<_$TodayCoursesImpl> get copyWith =>
      __$$TodayCoursesImplCopyWithImpl<_$TodayCoursesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayCoursesImplToJson(
      this,
    );
  }
}

abstract class _TodayCourses implements TodayCourses {
  const factory _TodayCourses({final List<TodayCourse>? courses}) =
      _$TodayCoursesImpl;

  factory _TodayCourses.fromJson(Map<String, dynamic> json) =
      _$TodayCoursesImpl.fromJson;

  @override
  List<TodayCourse>? get courses;

  /// Create a copy of TodayCourses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayCoursesImplCopyWith<_$TodayCoursesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TodayCourse _$TodayCourseFromJson(Map<String, dynamic> json) {
  return _TodayCourse.fromJson(json);
}

/// @nodoc
mixin _$TodayCourse {
  String get title => throw _privateConstructorUsedError;
  String get lectureRoom => throw _privateConstructorUsedError;
  String get professor => throw _privateConstructorUsedError;
  String get courseCode => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  /// Serializes this TodayCourse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodayCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayCourseCopyWith<TodayCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayCourseCopyWith<$Res> {
  factory $TodayCourseCopyWith(
          TodayCourse value, $Res Function(TodayCourse) then) =
      _$TodayCourseCopyWithImpl<$Res, TodayCourse>;
  @useResult
  $Res call(
      {String title,
      String lectureRoom,
      String professor,
      String courseCode,
      DateTime? deadline});
}

/// @nodoc
class _$TodayCourseCopyWithImpl<$Res, $Val extends TodayCourse>
    implements $TodayCourseCopyWith<$Res> {
  _$TodayCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lectureRoom = null,
    Object? professor = null,
    Object? courseCode = null,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodayCourseImplCopyWith<$Res>
    implements $TodayCourseCopyWith<$Res> {
  factory _$$TodayCourseImplCopyWith(
          _$TodayCourseImpl value, $Res Function(_$TodayCourseImpl) then) =
      __$$TodayCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String lectureRoom,
      String professor,
      String courseCode,
      DateTime? deadline});
}

/// @nodoc
class __$$TodayCourseImplCopyWithImpl<$Res>
    extends _$TodayCourseCopyWithImpl<$Res, _$TodayCourseImpl>
    implements _$$TodayCourseImplCopyWith<$Res> {
  __$$TodayCourseImplCopyWithImpl(
      _$TodayCourseImpl _value, $Res Function(_$TodayCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodayCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lectureRoom = null,
    Object? professor = null,
    Object? courseCode = null,
    Object? deadline = freezed,
  }) {
    return _then(_$TodayCourseImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayCourseImpl implements _TodayCourse {
  const _$TodayCourseImpl(
      {required this.title,
      required this.lectureRoom,
      required this.professor,
      required this.courseCode,
      this.deadline});

  factory _$TodayCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayCourseImplFromJson(json);

  @override
  final String title;
  @override
  final String lectureRoom;
  @override
  final String professor;
  @override
  final String courseCode;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'TodayCourse(title: $title, lectureRoom: $lectureRoom, professor: $professor, courseCode: $courseCode, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayCourseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lectureRoom, lectureRoom) ||
                other.lectureRoom == lectureRoom) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, lectureRoom, professor, courseCode, deadline);

  /// Create a copy of TodayCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayCourseImplCopyWith<_$TodayCourseImpl> get copyWith =>
      __$$TodayCourseImplCopyWithImpl<_$TodayCourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayCourseImplToJson(
      this,
    );
  }
}

abstract class _TodayCourse implements TodayCourse {
  const factory _TodayCourse(
      {required final String title,
      required final String lectureRoom,
      required final String professor,
      required final String courseCode,
      final DateTime? deadline}) = _$TodayCourseImpl;

  factory _TodayCourse.fromJson(Map<String, dynamic> json) =
      _$TodayCourseImpl.fromJson;

  @override
  String get title;
  @override
  String get lectureRoom;
  @override
  String get professor;
  @override
  String get courseCode;
  @override
  DateTime? get deadline;

  /// Create a copy of TodayCourse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayCourseImplCopyWith<_$TodayCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
