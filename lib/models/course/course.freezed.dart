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

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get link => throw _privateConstructorUsedError;
  @HiveField(2)
  String get code => throw _privateConstructorUsedError;
  @HiveField(3)
  String get professor => throw _privateConstructorUsedError;
  @HiveField(4)
  String get lectureRoom => throw _privateConstructorUsedError;
  @HiveField(5)
  List<WeekActivities> get weekActivities => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Notice> get notices => throw _privateConstructorUsedError;

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
      @HiveField(1) String link,
      @HiveField(2) String code,
      @HiveField(3) String professor,
      @HiveField(4) String lectureRoom,
      @HiveField(5) List<WeekActivities> weekActivities,
      @HiveField(6) List<Notice> notices});
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
    Object? link = null,
    Object? code = null,
    Object? professor = null,
    Object? lectureRoom = null,
    Object? weekActivities = null,
    Object? notices = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      weekActivities: null == weekActivities
          ? _value.weekActivities
          : weekActivities // ignore: cast_nullable_to_non_nullable
              as List<WeekActivities>,
      notices: null == notices
          ? _value.notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
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
      @HiveField(1) String link,
      @HiveField(2) String code,
      @HiveField(3) String professor,
      @HiveField(4) String lectureRoom,
      @HiveField(5) List<WeekActivities> weekActivities,
      @HiveField(6) List<Notice> notices});
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
    Object? link = null,
    Object? code = null,
    Object? professor = null,
    Object? lectureRoom = null,
    Object? weekActivities = null,
    Object? notices = null,
  }) {
    return _then(_$CourseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      weekActivities: null == weekActivities
          ? _value._weekActivities
          : weekActivities // ignore: cast_nullable_to_non_nullable
              as List<WeekActivities>,
      notices: null == notices
          ? _value._notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl extends _Course {
  const _$CourseImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.link,
      @HiveField(2) required this.code,
      @HiveField(3) required this.professor,
      @HiveField(4) required this.lectureRoom,
      @HiveField(5) final List<WeekActivities> weekActivities = const [],
      @HiveField(6) final List<Notice> notices = const []})
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
  final String link;
  @override
  @HiveField(2)
  final String code;
  @override
  @HiveField(3)
  final String professor;
  @override
  @HiveField(4)
  final String lectureRoom;
  final List<WeekActivities> _weekActivities;
  @override
  @JsonKey()
  @HiveField(5)
  List<WeekActivities> get weekActivities {
    if (_weekActivities is EqualUnmodifiableListView) return _weekActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekActivities);
  }

  final List<Notice> _notices;
  @override
  @JsonKey()
  @HiveField(6)
  List<Notice> get notices {
    if (_notices is EqualUnmodifiableListView) return _notices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notices);
  }

  @override
  String toString() {
    return 'Course(name: $name, link: $link, code: $code, professor: $professor, lectureRoom: $lectureRoom, weekActivities: $weekActivities, notices: $notices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.lectureRoom, lectureRoom) ||
                other.lectureRoom == lectureRoom) &&
            const DeepCollectionEquality()
                .equals(other._weekActivities, _weekActivities) &&
            const DeepCollectionEquality().equals(other._notices, _notices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      link,
      code,
      professor,
      lectureRoom,
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
      @HiveField(1) required final String link,
      @HiveField(2) required final String code,
      @HiveField(3) required final String professor,
      @HiveField(4) required final String lectureRoom,
      @HiveField(5) final List<WeekActivities> weekActivities,
      @HiveField(6) final List<Notice> notices}) = _$CourseImpl;
  const _Course._() : super._();

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get link;
  @override
  @HiveField(2)
  String get code;
  @override
  @HiveField(3)
  String get professor;
  @override
  @HiveField(4)
  String get lectureRoom;
  @override
  @HiveField(5)
  List<WeekActivities> get weekActivities;
  @override
  @HiveField(6)
  List<Notice> get notices;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
