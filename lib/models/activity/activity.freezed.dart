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

WeekActivities _$WeekActivitiesFromJson(Map<String, dynamic> json) {
  return _WeekActivities.fromJson(json);
}

/// @nodoc
mixin _$WeekActivities {
  @HiveField(0)
  int get week => throw _privateConstructorUsedError;
  @HiveField(1)
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
  $Res call({@HiveField(0) int week, @HiveField(1) List<Activity> activities});
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
    Object? week = null,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({@HiveField(0) int week, @HiveField(1) List<Activity> activities});
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
    Object? week = null,
    Object? activities = null,
  }) {
    return _then(_$WeekActivitiesImpl(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
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
      {@HiveField(0) required this.week,
      @HiveField(1) required final List<Activity> activities})
      : _activities = activities;

  factory _$WeekActivitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekActivitiesImplFromJson(json);

  @override
  @HiveField(0)
  final int week;
  final List<Activity> _activities;
  @override
  @HiveField(1)
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
          {@HiveField(0) required final int week,
          @HiveField(1) required final List<Activity> activities}) =
      _$WeekActivitiesImpl;

  factory _WeekActivities.fromJson(Map<String, dynamic> json) =
      _$WeekActivitiesImpl.fromJson;

  @override
  @HiveField(0)
  int get week;
  @override
  @HiveField(1)
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
  @HiveField(0)
  ActivityType get type => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get available => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get link => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime? get deadline => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get lectureTime => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get gradingStatus => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get timeLeft => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get lastModified => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get description => throw _privateConstructorUsedError;

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
      {@HiveField(0) ActivityType type,
      @HiveField(1) bool available,
      @HiveField(2) String? name,
      @HiveField(3) String? link,
      @HiveField(4) String? code,
      @HiveField(5) DateTime? deadline,
      @HiveField(6) String? lectureTime,
      @HiveField(7) String? gradingStatus,
      @HiveField(8) String? timeLeft,
      @HiveField(9) String? lastModified,
      @HiveField(10) String? description});
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
    Object? name = freezed,
    Object? link = freezed,
    Object? code = freezed,
    Object? deadline = freezed,
    Object? lectureTime = freezed,
    Object? gradingStatus = freezed,
    Object? timeLeft = freezed,
    Object? lastModified = freezed,
    Object? description = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lectureTime: freezed == lectureTime
          ? _value.lectureTime
          : lectureTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@HiveField(0) ActivityType type,
      @HiveField(1) bool available,
      @HiveField(2) String? name,
      @HiveField(3) String? link,
      @HiveField(4) String? code,
      @HiveField(5) DateTime? deadline,
      @HiveField(6) String? lectureTime,
      @HiveField(7) String? gradingStatus,
      @HiveField(8) String? timeLeft,
      @HiveField(9) String? lastModified,
      @HiveField(10) String? description});
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
    Object? name = freezed,
    Object? link = freezed,
    Object? code = freezed,
    Object? deadline = freezed,
    Object? lectureTime = freezed,
    Object? gradingStatus = freezed,
    Object? timeLeft = freezed,
    Object? lastModified = freezed,
    Object? description = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lectureTime: freezed == lectureTime
          ? _value.lectureTime
          : lectureTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  const _$ActivityImpl(
      {@HiveField(0) required this.type,
      @HiveField(1) required this.available,
      @HiveField(2) this.name,
      @HiveField(3) this.link,
      @HiveField(4) this.code,
      @HiveField(5) this.deadline,
      @HiveField(6) this.lectureTime,
      @HiveField(7) this.gradingStatus,
      @HiveField(8) this.timeLeft,
      @HiveField(9) this.lastModified,
      @HiveField(10) this.description});

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  @HiveField(0)
  final ActivityType type;
  @override
  @HiveField(1)
  final bool available;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? link;
  @override
  @HiveField(4)
  final String? code;
  @override
  @HiveField(5)
  final DateTime? deadline;
  @override
  @HiveField(6)
  final String? lectureTime;
  @override
  @HiveField(7)
  final String? gradingStatus;
  @override
  @HiveField(8)
  final String? timeLeft;
  @override
  @HiveField(9)
  final String? lastModified;
  @override
  @HiveField(10)
  final String? description;

  @override
  String toString() {
    return 'Activity(type: $type, available: $available, name: $name, link: $link, code: $code, deadline: $deadline, lectureTime: $lectureTime, gradingStatus: $gradingStatus, timeLeft: $timeLeft, lastModified: $lastModified, description: $description)';
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
            (identical(other.gradingStatus, gradingStatus) ||
                other.gradingStatus == gradingStatus) &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.description, description) ||
                other.description == description));
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
      gradingStatus,
      timeLeft,
      lastModified,
      description);

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
      {@HiveField(0) required final ActivityType type,
      @HiveField(1) required final bool available,
      @HiveField(2) final String? name,
      @HiveField(3) final String? link,
      @HiveField(4) final String? code,
      @HiveField(5) final DateTime? deadline,
      @HiveField(6) final String? lectureTime,
      @HiveField(7) final String? gradingStatus,
      @HiveField(8) final String? timeLeft,
      @HiveField(9) final String? lastModified,
      @HiveField(10) final String? description}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  @HiveField(0)
  ActivityType get type;
  @override
  @HiveField(1)
  bool get available;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get link;
  @override
  @HiveField(4)
  String? get code;
  @override
  @HiveField(5)
  DateTime? get deadline;
  @override
  @HiveField(6)
  String? get lectureTime;
  @override
  @HiveField(7)
  String? get gradingStatus;
  @override
  @HiveField(8)
  String? get timeLeft;
  @override
  @HiveField(9)
  String? get lastModified;
  @override
  @HiveField(10)
  String? get description;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
