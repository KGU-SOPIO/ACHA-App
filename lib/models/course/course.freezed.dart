// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Courses _$CoursesFromJson(Map<String, dynamic> json) {
  return _Courses.fromJson(json);
}

/// @nodoc
mixin _$Courses {
  List<Course>? get courses => throw _privateConstructorUsedError;

  /// Serializes this Courses to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Courses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoursesCopyWith<Courses> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesCopyWith<$Res> {
  factory $CoursesCopyWith(Courses value, $Res Function(Courses) then) =
      _$CoursesCopyWithImpl<$Res, Courses>;
  @useResult
  $Res call({List<Course>? courses});
}

/// @nodoc
class _$CoursesCopyWithImpl<$Res, $Val extends Courses>
    implements $CoursesCopyWith<$Res> {
  _$CoursesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Courses
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
              as List<Course>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesImplCopyWith<$Res> implements $CoursesCopyWith<$Res> {
  factory _$$CoursesImplCopyWith(
          _$CoursesImpl value, $Res Function(_$CoursesImpl) then) =
      __$$CoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Course>? courses});
}

/// @nodoc
class __$$CoursesImplCopyWithImpl<$Res>
    extends _$CoursesCopyWithImpl<$Res, _$CoursesImpl>
    implements _$$CoursesImplCopyWith<$Res> {
  __$$CoursesImplCopyWithImpl(
      _$CoursesImpl _value, $Res Function(_$CoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Courses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_$CoursesImpl(
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursesImpl implements _Courses {
  const _$CoursesImpl({final List<Course>? courses = const []})
      : _courses = courses;

  factory _$CoursesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursesImplFromJson(json);

  final List<Course>? _courses;
  @override
  @JsonKey()
  List<Course>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Courses(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of Courses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesImplCopyWith<_$CoursesImpl> get copyWith =>
      __$$CoursesImplCopyWithImpl<_$CoursesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursesImplToJson(
      this,
    );
  }
}

abstract class _Courses implements Courses {
  const factory _Courses({final List<Course>? courses}) = _$CoursesImpl;

  factory _Courses.fromJson(Map<String, dynamic> json) = _$CoursesImpl.fromJson;

  @override
  List<Course>? get courses;

  /// Create a copy of Courses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoursesImplCopyWith<_$CoursesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get professor => throw _privateConstructorUsedError;
  @HiveField(2)
  String get lectureRoom => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get deadline => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get link => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Activities>? get weekActivities => throw _privateConstructorUsedError;
  @HiveField(7)
  List<Notice>? get notices => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String professor,
      @HiveField(2) String lectureRoom,
      @HiveField(3) DateTime? deadline,
      @HiveField(4) String? link,
      @HiveField(5) String? code,
      @HiveField(6) List<Activities>? weekActivities,
      @HiveField(7) List<Notice>? notices});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? professor = null,
    Object? lectureRoom = null,
    Object? deadline = freezed,
    Object? link = freezed,
    Object? code = freezed,
    Object? weekActivities = freezed,
    Object? notices = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      weekActivities: freezed == weekActivities
          ? _value.weekActivities
          : weekActivities // ignore: cast_nullable_to_non_nullable
              as List<Activities>?,
      notices: freezed == notices
          ? _value.notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String professor,
      @HiveField(2) String lectureRoom,
      @HiveField(3) DateTime? deadline,
      @HiveField(4) String? link,
      @HiveField(5) String? code,
      @HiveField(6) List<Activities>? weekActivities,
      @HiveField(7) List<Notice>? notices});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? professor = null,
    Object? lectureRoom = null,
    Object? deadline = freezed,
    Object? link = freezed,
    Object? code = freezed,
    Object? weekActivities = freezed,
    Object? notices = freezed,
  }) {
    return _then(_$CourseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      weekActivities: freezed == weekActivities
          ? _value._weekActivities
          : weekActivities // ignore: cast_nullable_to_non_nullable
              as List<Activities>?,
      notices: freezed == notices
          ? _value._notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl extends _Course {
  const _$CourseImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.professor,
      @HiveField(2) required this.lectureRoom,
      @HiveField(3) this.deadline,
      @HiveField(4) this.link,
      @HiveField(5) this.code,
      @HiveField(6) final List<Activities>? weekActivities,
      @HiveField(7) final List<Notice>? notices})
      : _weekActivities = weekActivities,
        _notices = notices,
        super._();

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String professor;
  @override
  @HiveField(2)
  final String lectureRoom;
  @override
  @HiveField(3)
  final DateTime? deadline;
  @override
  @HiveField(4)
  final String? link;
  @override
  @HiveField(5)
  final String? code;
  final List<Activities>? _weekActivities;
  @override
  @HiveField(6)
  List<Activities>? get weekActivities {
    final value = _weekActivities;
    if (value == null) return null;
    if (_weekActivities is EqualUnmodifiableListView) return _weekActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Notice>? _notices;
  @override
  @HiveField(7)
  List<Notice>? get notices {
    final value = _notices;
    if (value == null) return null;
    if (_notices is EqualUnmodifiableListView) return _notices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Course(name: $name, professor: $professor, lectureRoom: $lectureRoom, deadline: $deadline, link: $link, code: $code, weekActivities: $weekActivities, notices: $notices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.lectureRoom, lectureRoom) ||
                other.lectureRoom == lectureRoom) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._weekActivities, _weekActivities) &&
            const DeepCollectionEquality().equals(other._notices, _notices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      professor,
      lectureRoom,
      deadline,
      link,
      code,
      const DeepCollectionEquality().hash(_weekActivities),
      const DeepCollectionEquality().hash(_notices));

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course extends Course {
  const factory _Course(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String professor,
      @HiveField(2) required final String lectureRoom,
      @HiveField(3) final DateTime? deadline,
      @HiveField(4) final String? link,
      @HiveField(5) final String? code,
      @HiveField(6) final List<Activities>? weekActivities,
      @HiveField(7) final List<Notice>? notices}) = _$CourseImpl;
  const _Course._() : super._();

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get professor;
  @override
  @HiveField(2)
  String get lectureRoom;
  @override
  @HiveField(3)
  DateTime? get deadline;
  @override
  @HiveField(4)
  String? get link;
  @override
  @HiveField(5)
  String? get code;
  @override
  @HiveField(6)
  List<Activities>? get weekActivities;
  @override
  @HiveField(7)
  List<Notice>? get notices;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
