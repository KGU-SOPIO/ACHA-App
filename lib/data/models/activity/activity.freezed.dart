// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseActivities _$CourseActivitiesFromJson(Map<String, dynamic> json) {
  return _CourseActivities.fromJson(json);
}

/// @nodoc
mixin _$CourseActivities {
  List<WeekActivities> get weekActivities => throw _privateConstructorUsedError;

  /// Serializes this CourseActivities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseActivities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseActivitiesCopyWith<CourseActivities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseActivitiesCopyWith<$Res> {
  factory $CourseActivitiesCopyWith(
          CourseActivities value, $Res Function(CourseActivities) then) =
      _$CourseActivitiesCopyWithImpl<$Res, CourseActivities>;
  @useResult
  $Res call({List<WeekActivities> weekActivities});
}

/// @nodoc
class _$CourseActivitiesCopyWithImpl<$Res, $Val extends CourseActivities>
    implements $CourseActivitiesCopyWith<$Res> {
  _$CourseActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseActivities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekActivities = null,
  }) {
    return _then(_value.copyWith(
      weekActivities: null == weekActivities
          ? _value.weekActivities
          : weekActivities // ignore: cast_nullable_to_non_nullable
              as List<WeekActivities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseActivitiesImplCopyWith<$Res>
    implements $CourseActivitiesCopyWith<$Res> {
  factory _$$CourseActivitiesImplCopyWith(_$CourseActivitiesImpl value,
          $Res Function(_$CourseActivitiesImpl) then) =
      __$$CourseActivitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeekActivities> weekActivities});
}

/// @nodoc
class __$$CourseActivitiesImplCopyWithImpl<$Res>
    extends _$CourseActivitiesCopyWithImpl<$Res, _$CourseActivitiesImpl>
    implements _$$CourseActivitiesImplCopyWith<$Res> {
  __$$CourseActivitiesImplCopyWithImpl(_$CourseActivitiesImpl _value,
      $Res Function(_$CourseActivitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseActivities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekActivities = null,
  }) {
    return _then(_$CourseActivitiesImpl(
      weekActivities: null == weekActivities
          ? _value._weekActivities
          : weekActivities // ignore: cast_nullable_to_non_nullable
              as List<WeekActivities>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseActivitiesImpl implements _CourseActivities {
  const _$CourseActivitiesImpl(
      {required final List<WeekActivities> weekActivities})
      : _weekActivities = weekActivities;

  factory _$CourseActivitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseActivitiesImplFromJson(json);

  final List<WeekActivities> _weekActivities;
  @override
  List<WeekActivities> get weekActivities {
    if (_weekActivities is EqualUnmodifiableListView) return _weekActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekActivities);
  }

  @override
  String toString() {
    return 'CourseActivities(weekActivities: $weekActivities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseActivitiesImpl &&
            const DeepCollectionEquality()
                .equals(other._weekActivities, _weekActivities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weekActivities));

  /// Create a copy of CourseActivities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseActivitiesImplCopyWith<_$CourseActivitiesImpl> get copyWith =>
      __$$CourseActivitiesImplCopyWithImpl<_$CourseActivitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseActivitiesImplToJson(
      this,
    );
  }
}

abstract class _CourseActivities implements CourseActivities {
  const factory _CourseActivities(
          {required final List<WeekActivities> weekActivities}) =
      _$CourseActivitiesImpl;

  factory _CourseActivities.fromJson(Map<String, dynamic> json) =
      _$CourseActivitiesImpl.fromJson;

  @override
  List<WeekActivities> get weekActivities;

  /// Create a copy of CourseActivities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseActivitiesImplCopyWith<_$CourseActivitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekActivities _$WeekActivitiesFromJson(Map<String, dynamic> json) {
  return _WeekActivities.fromJson(json);
}

/// @nodoc
mixin _$WeekActivities {
  int? get week => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;

  /// Serializes this WeekActivities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekActivities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekActivitiesCopyWith<WeekActivities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekActivitiesCopyWith<$Res> {
  factory $WeekActivitiesCopyWith(
          WeekActivities value, $Res Function(WeekActivities) then) =
      _$WeekActivitiesCopyWithImpl<$Res, WeekActivities>;
  @useResult
  $Res call({int? week, List<Activity> activities});
}

/// @nodoc
class _$WeekActivitiesCopyWithImpl<$Res, $Val extends WeekActivities>
    implements $WeekActivitiesCopyWith<$Res> {
  _$WeekActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekActivities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekActivitiesImplCopyWith<$Res>
    implements $WeekActivitiesCopyWith<$Res> {
  factory _$$WeekActivitiesImplCopyWith(_$WeekActivitiesImpl value,
          $Res Function(_$WeekActivitiesImpl) then) =
      __$$WeekActivitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? week, List<Activity> activities});
}

/// @nodoc
class __$$WeekActivitiesImplCopyWithImpl<$Res>
    extends _$WeekActivitiesCopyWithImpl<$Res, _$WeekActivitiesImpl>
    implements _$$WeekActivitiesImplCopyWith<$Res> {
  __$$WeekActivitiesImplCopyWithImpl(
      _$WeekActivitiesImpl _value, $Res Function(_$WeekActivitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekActivities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? activities = null,
  }) {
    return _then(_$WeekActivitiesImpl(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekActivitiesImpl implements _WeekActivities {
  const _$WeekActivitiesImpl(
      {this.week, required final List<Activity> activities})
      : _activities = activities;

  factory _$WeekActivitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekActivitiesImplFromJson(json);

  @override
  final int? week;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'WeekActivities(week: $week, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekActivitiesImpl &&
            (identical(other.week, week) || other.week == week) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, week, const DeepCollectionEquality().hash(_activities));

  /// Create a copy of WeekActivities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekActivitiesImplCopyWith<_$WeekActivitiesImpl> get copyWith =>
      __$$WeekActivitiesImplCopyWithImpl<_$WeekActivitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekActivitiesImplToJson(
      this,
    );
  }
}

abstract class _WeekActivities implements WeekActivities {
  const factory _WeekActivities(
      {final int? week,
      required final List<Activity> activities}) = _$WeekActivitiesImpl;

  factory _WeekActivities.fromJson(Map<String, dynamic> json) =
      _$WeekActivitiesImpl.fromJson;

  @override
  int? get week;
  @override
  List<Activity> get activities;

  /// Create a copy of WeekActivities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekActivitiesImplCopyWith<_$WeekActivitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  ActivityType get type => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get lectureTime => throw _privateConstructorUsedError;
  bool? get attendance => throw _privateConstructorUsedError;
  String? get gradingStatus => throw _privateConstructorUsedError;
  String? get timeLeft => throw _privateConstructorUsedError;
  String? get lastModified => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {ActivityType type,
      bool available,
      String name,
      String link,
      String code,
      DateTime? deadline,
      String? lectureTime,
      bool? attendance,
      String? gradingStatus,
      String? timeLeft,
      String? lastModified,
      String? description,
      String? courseName});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? available = null,
    Object? name = null,
    Object? link = null,
    Object? code = null,
    Object? deadline = freezed,
    Object? lectureTime = freezed,
    Object? attendance = freezed,
    Object? gradingStatus = freezed,
    Object? timeLeft = freezed,
    Object? lastModified = freezed,
    Object? description = freezed,
    Object? courseName = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
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
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lectureTime: freezed == lectureTime
          ? _value.lectureTime
          : lectureTime // ignore: cast_nullable_to_non_nullable
              as String?,
      attendance: freezed == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as bool?,
      gradingStatus: freezed == gradingStatus
          ? _value.gradingStatus
          : gradingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLeft: freezed == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityType type,
      bool available,
      String name,
      String link,
      String code,
      DateTime? deadline,
      String? lectureTime,
      bool? attendance,
      String? gradingStatus,
      String? timeLeft,
      String? lastModified,
      String? description,
      String? courseName});
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? available = null,
    Object? name = null,
    Object? link = null,
    Object? code = null,
    Object? deadline = freezed,
    Object? lectureTime = freezed,
    Object? attendance = freezed,
    Object? gradingStatus = freezed,
    Object? timeLeft = freezed,
    Object? lastModified = freezed,
    Object? description = freezed,
    Object? courseName = freezed,
  }) {
    return _then(_$ActivityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
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
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lectureTime: freezed == lectureTime
          ? _value.lectureTime
          : lectureTime // ignore: cast_nullable_to_non_nullable
              as String?,
      attendance: freezed == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as bool?,
      gradingStatus: freezed == gradingStatus
          ? _value.gradingStatus
          : gradingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLeft: freezed == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  const _$ActivityImpl(
      {required this.type,
      required this.available,
      required this.name,
      required this.link,
      required this.code,
      this.deadline,
      this.lectureTime,
      this.attendance,
      this.gradingStatus,
      this.timeLeft,
      this.lastModified,
      this.description,
      this.courseName});

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final ActivityType type;
  @override
  final bool available;
  @override
  final String name;
  @override
  final String link;
  @override
  final String code;
  @override
  final DateTime? deadline;
  @override
  final String? lectureTime;
  @override
  final bool? attendance;
  @override
  final String? gradingStatus;
  @override
  final String? timeLeft;
  @override
  final String? lastModified;
  @override
  final String? description;
  @override
  final String? courseName;

  @override
  String toString() {
    return 'Activity(type: $type, available: $available, name: $name, link: $link, code: $code, deadline: $deadline, lectureTime: $lectureTime, attendance: $attendance, gradingStatus: $gradingStatus, timeLeft: $timeLeft, lastModified: $lastModified, description: $description, courseName: $courseName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.lectureTime, lectureTime) ||
                other.lectureTime == lectureTime) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.gradingStatus, gradingStatus) ||
                other.gradingStatus == gradingStatus) &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      available,
      name,
      link,
      code,
      deadline,
      lectureTime,
      attendance,
      gradingStatus,
      timeLeft,
      lastModified,
      description,
      courseName);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {required final ActivityType type,
      required final bool available,
      required final String name,
      required final String link,
      required final String code,
      final DateTime? deadline,
      final String? lectureTime,
      final bool? attendance,
      final String? gradingStatus,
      final String? timeLeft,
      final String? lastModified,
      final String? description,
      final String? courseName}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  ActivityType get type;
  @override
  bool get available;
  @override
  String get name;
  @override
  String get link;
  @override
  String get code;
  @override
  DateTime? get deadline;
  @override
  String? get lectureTime;
  @override
  bool? get attendance;
  @override
  String? get gradingStatus;
  @override
  String? get timeLeft;
  @override
  String? get lastModified;
  @override
  String? get description;
  @override
  String? get courseName;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
