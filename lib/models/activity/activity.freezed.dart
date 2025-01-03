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

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  ActivityType get activityType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get lectureTime => throw _privateConstructorUsedError;
  String? get gradingStatus => throw _privateConstructorUsedError;
  String? get timeLeft => throw _privateConstructorUsedError;
  String? get lastModified => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isAvailable => throw _privateConstructorUsedError;

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
      {ActivityType activityType,
      String? name,
      String? link,
      String? code,
      DateTime? deadline,
      String? lectureTime,
      String? gradingStatus,
      String? timeLeft,
      String? lastModified,
      String? description,
      bool? isAvailable});
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
    Object? activityType = null,
    Object? name = freezed,
    Object? link = freezed,
    Object? code = freezed,
    Object? deadline = freezed,
    Object? lectureTime = freezed,
    Object? gradingStatus = freezed,
    Object? timeLeft = freezed,
    Object? lastModified = freezed,
    Object? description = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
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
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {ActivityType activityType,
      String? name,
      String? link,
      String? code,
      DateTime? deadline,
      String? lectureTime,
      String? gradingStatus,
      String? timeLeft,
      String? lastModified,
      String? description,
      bool? isAvailable});
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
    Object? activityType = null,
    Object? name = freezed,
    Object? link = freezed,
    Object? code = freezed,
    Object? deadline = freezed,
    Object? lectureTime = freezed,
    Object? gradingStatus = freezed,
    Object? timeLeft = freezed,
    Object? lastModified = freezed,
    Object? description = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_$ActivityImpl(
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
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
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  const _$ActivityImpl(
      {required this.activityType,
      this.name,
      this.link,
      this.code,
      this.deadline,
      this.lectureTime,
      this.gradingStatus,
      this.timeLeft,
      this.lastModified,
      this.description,
      this.isAvailable});

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final ActivityType activityType;
  @override
  final String? name;
  @override
  final String? link;
  @override
  final String? code;
  @override
  final DateTime? deadline;
  @override
  final String? lectureTime;
  @override
  final String? gradingStatus;
  @override
  final String? timeLeft;
  @override
  final String? lastModified;
  @override
  final String? description;
  @override
  final bool? isAvailable;

  @override
  String toString() {
    return 'Activity(activityType: $activityType, name: $name, link: $link, code: $code, deadline: $deadline, lectureTime: $lectureTime, gradingStatus: $gradingStatus, timeLeft: $timeLeft, lastModified: $lastModified, description: $description, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
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
                other.description == description) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      activityType,
      name,
      link,
      code,
      deadline,
      lectureTime,
      gradingStatus,
      timeLeft,
      lastModified,
      description,
      isAvailable);

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
      {required final ActivityType activityType,
      final String? name,
      final String? link,
      final String? code,
      final DateTime? deadline,
      final String? lectureTime,
      final String? gradingStatus,
      final String? timeLeft,
      final String? lastModified,
      final String? description,
      final bool? isAvailable}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  ActivityType get activityType;
  @override
  String? get name;
  @override
  String? get link;
  @override
  String? get code;
  @override
  DateTime? get deadline;
  @override
  String? get lectureTime;
  @override
  String? get gradingStatus;
  @override
  String? get timeLeft;
  @override
  String? get lastModified;
  @override
  String? get description;
  @override
  bool? get isAvailable;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
