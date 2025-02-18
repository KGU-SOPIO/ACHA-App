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

CourseActivityListModel _$CourseActivityListModelFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return CourseActivityList.fromJson(json);
    case 'error':
      return CourseActivityListError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'CourseActivityListModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CourseActivityListModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ActivityList> weekActivityList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ActivityList> weekActivityList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ActivityList> weekActivityList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CourseActivityList value) $default, {
    required TResult Function(CourseActivityListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CourseActivityList value)? $default, {
    TResult? Function(CourseActivityListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CourseActivityList value)? $default, {
    TResult Function(CourseActivityListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CourseActivityListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseActivityListModelCopyWith<$Res> {
  factory $CourseActivityListModelCopyWith(CourseActivityListModel value,
          $Res Function(CourseActivityListModel) then) =
      _$CourseActivityListModelCopyWithImpl<$Res, CourseActivityListModel>;
}

/// @nodoc
class _$CourseActivityListModelCopyWithImpl<$Res,
        $Val extends CourseActivityListModel>
    implements $CourseActivityListModelCopyWith<$Res> {
  _$CourseActivityListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CourseActivityListImplCopyWith<$Res> {
  factory _$$CourseActivityListImplCopyWith(_$CourseActivityListImpl value,
          $Res Function(_$CourseActivityListImpl) then) =
      __$$CourseActivityListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ActivityList> weekActivityList});
}

/// @nodoc
class __$$CourseActivityListImplCopyWithImpl<$Res>
    extends _$CourseActivityListModelCopyWithImpl<$Res,
        _$CourseActivityListImpl>
    implements _$$CourseActivityListImplCopyWith<$Res> {
  __$$CourseActivityListImplCopyWithImpl(_$CourseActivityListImpl _value,
      $Res Function(_$CourseActivityListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekActivityList = null,
  }) {
    return _then(_$CourseActivityListImpl(
      weekActivityList: null == weekActivityList
          ? _value._weekActivityList
          : weekActivityList // ignore: cast_nullable_to_non_nullable
              as List<ActivityList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseActivityListImpl implements CourseActivityList {
  const _$CourseActivityListImpl(
      {required final List<ActivityList> weekActivityList, final String? $type})
      : _weekActivityList = weekActivityList,
        $type = $type ?? 'default';

  factory _$CourseActivityListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseActivityListImplFromJson(json);

  final List<ActivityList> _weekActivityList;
  @override
  List<ActivityList> get weekActivityList {
    if (_weekActivityList is EqualUnmodifiableListView)
      return _weekActivityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekActivityList);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CourseActivityListModel(weekActivityList: $weekActivityList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseActivityListImpl &&
            const DeepCollectionEquality()
                .equals(other._weekActivityList, _weekActivityList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weekActivityList));

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseActivityListImplCopyWith<_$CourseActivityListImpl> get copyWith =>
      __$$CourseActivityListImplCopyWithImpl<_$CourseActivityListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ActivityList> weekActivityList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(weekActivityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ActivityList> weekActivityList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(weekActivityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ActivityList> weekActivityList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(weekActivityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CourseActivityList value) $default, {
    required TResult Function(CourseActivityListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CourseActivityList value)? $default, {
    TResult? Function(CourseActivityListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CourseActivityList value)? $default, {
    TResult Function(CourseActivityListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseActivityListImplToJson(
      this,
    );
  }
}

abstract class CourseActivityList implements CourseActivityListModel {
  const factory CourseActivityList(
          {required final List<ActivityList> weekActivityList}) =
      _$CourseActivityListImpl;

  factory CourseActivityList.fromJson(Map<String, dynamic> json) =
      _$CourseActivityListImpl.fromJson;

  List<ActivityList> get weekActivityList;

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseActivityListImplCopyWith<_$CourseActivityListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseActivityListErrorImplCopyWith<$Res> {
  factory _$$CourseActivityListErrorImplCopyWith(
          _$CourseActivityListErrorImpl value,
          $Res Function(_$CourseActivityListErrorImpl) then) =
      __$$CourseActivityListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$CourseActivityListErrorImplCopyWithImpl<$Res>
    extends _$CourseActivityListModelCopyWithImpl<$Res,
        _$CourseActivityListErrorImpl>
    implements _$$CourseActivityListErrorImplCopyWith<$Res> {
  __$$CourseActivityListErrorImplCopyWithImpl(
      _$CourseActivityListErrorImpl _value,
      $Res Function(_$CourseActivityListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CourseActivityListErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseActivityListErrorImpl implements CourseActivityListError {
  const _$CourseActivityListErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$CourseActivityListErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseActivityListErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CourseActivityListModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseActivityListErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseActivityListErrorImplCopyWith<_$CourseActivityListErrorImpl>
      get copyWith => __$$CourseActivityListErrorImplCopyWithImpl<
          _$CourseActivityListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ActivityList> weekActivityList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ActivityList> weekActivityList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ActivityList> weekActivityList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CourseActivityList value) $default, {
    required TResult Function(CourseActivityListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CourseActivityList value)? $default, {
    TResult? Function(CourseActivityListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CourseActivityList value)? $default, {
    TResult Function(CourseActivityListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseActivityListErrorImplToJson(
      this,
    );
  }
}

abstract class CourseActivityListError implements CourseActivityListModel {
  const factory CourseActivityListError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$CourseActivityListErrorImpl;

  factory CourseActivityListError.fromJson(Map<String, dynamic> json) =
      _$CourseActivityListErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of CourseActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseActivityListErrorImplCopyWith<_$CourseActivityListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityListModel _$ActivityListModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return ActivityList.fromJson(json);
    case 'error':
      return ActivityListError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ActivityListModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ActivityListModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? week, List<Activity> activitylist) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? week, List<Activity> activitylist)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? week, List<Activity> activitylist)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ActivityList value) $default, {
    required TResult Function(ActivityListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ActivityList value)? $default, {
    TResult? Function(ActivityListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ActivityList value)? $default, {
    TResult Function(ActivityListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ActivityListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityListModelCopyWith<$Res> {
  factory $ActivityListModelCopyWith(
          ActivityListModel value, $Res Function(ActivityListModel) then) =
      _$ActivityListModelCopyWithImpl<$Res, ActivityListModel>;
}

/// @nodoc
class _$ActivityListModelCopyWithImpl<$Res, $Val extends ActivityListModel>
    implements $ActivityListModelCopyWith<$Res> {
  _$ActivityListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ActivityListImplCopyWith<$Res> {
  factory _$$ActivityListImplCopyWith(
          _$ActivityListImpl value, $Res Function(_$ActivityListImpl) then) =
      __$$ActivityListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? week, List<Activity> activitylist});
}

/// @nodoc
class __$$ActivityListImplCopyWithImpl<$Res>
    extends _$ActivityListModelCopyWithImpl<$Res, _$ActivityListImpl>
    implements _$$ActivityListImplCopyWith<$Res> {
  __$$ActivityListImplCopyWithImpl(
      _$ActivityListImpl _value, $Res Function(_$ActivityListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? activitylist = null,
  }) {
    return _then(_$ActivityListImpl(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      activitylist: null == activitylist
          ? _value._activitylist
          : activitylist // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityListImpl implements ActivityList {
  const _$ActivityListImpl(
      {this.week,
      required final List<Activity> activitylist,
      final String? $type})
      : _activitylist = activitylist,
        $type = $type ?? 'default';

  factory _$ActivityListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityListImplFromJson(json);

  @override
  final int? week;
  final List<Activity> _activitylist;
  @override
  List<Activity> get activitylist {
    if (_activitylist is EqualUnmodifiableListView) return _activitylist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activitylist);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActivityListModel(week: $week, activitylist: $activitylist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityListImpl &&
            (identical(other.week, week) || other.week == week) &&
            const DeepCollectionEquality()
                .equals(other._activitylist, _activitylist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, week, const DeepCollectionEquality().hash(_activitylist));

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityListImplCopyWith<_$ActivityListImpl> get copyWith =>
      __$$ActivityListImplCopyWithImpl<_$ActivityListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? week, List<Activity> activitylist) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(week, activitylist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? week, List<Activity> activitylist)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(week, activitylist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? week, List<Activity> activitylist)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(week, activitylist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ActivityList value) $default, {
    required TResult Function(ActivityListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ActivityList value)? $default, {
    TResult? Function(ActivityListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ActivityList value)? $default, {
    TResult Function(ActivityListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityListImplToJson(
      this,
    );
  }
}

abstract class ActivityList implements ActivityListModel {
  const factory ActivityList(
      {final int? week,
      required final List<Activity> activitylist}) = _$ActivityListImpl;

  factory ActivityList.fromJson(Map<String, dynamic> json) =
      _$ActivityListImpl.fromJson;

  int? get week;
  List<Activity> get activitylist;

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityListImplCopyWith<_$ActivityListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityListErrorImplCopyWith<$Res> {
  factory _$$ActivityListErrorImplCopyWith(_$ActivityListErrorImpl value,
          $Res Function(_$ActivityListErrorImpl) then) =
      __$$ActivityListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$ActivityListErrorImplCopyWithImpl<$Res>
    extends _$ActivityListModelCopyWithImpl<$Res, _$ActivityListErrorImpl>
    implements _$$ActivityListErrorImplCopyWith<$Res> {
  __$$ActivityListErrorImplCopyWithImpl(_$ActivityListErrorImpl _value,
      $Res Function(_$ActivityListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ActivityListErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityListErrorImpl implements ActivityListError {
  const _$ActivityListErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$ActivityListErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityListErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActivityListModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityListErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityListErrorImplCopyWith<_$ActivityListErrorImpl> get copyWith =>
      __$$ActivityListErrorImplCopyWithImpl<_$ActivityListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? week, List<Activity> activitylist) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? week, List<Activity> activitylist)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? week, List<Activity> activitylist)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ActivityList value) $default, {
    required TResult Function(ActivityListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ActivityList value)? $default, {
    TResult? Function(ActivityListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ActivityList value)? $default, {
    TResult Function(ActivityListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityListErrorImplToJson(
      this,
    );
  }
}

abstract class ActivityListError implements ActivityListModel {
  const factory ActivityListError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$ActivityListErrorImpl;

  factory ActivityListError.fromJson(Map<String, dynamic> json) =
      _$ActivityListErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of ActivityListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityListErrorImplCopyWith<_$ActivityListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return Activity.fromJson(json);
}

/// @nodoc
mixin _$ActivityModel {
  ActivityType get type => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get lectureTime => throw _privateConstructorUsedError;
  bool? get attendance => throw _privateConstructorUsedError;
  String? get gradingStatus => throw _privateConstructorUsedError;
  String? get timeLeft => throw _privateConstructorUsedError;
  String? get lastModified => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;

  /// Serializes this ActivityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res, ActivityModel>;
  @useResult
  $Res call(
      {ActivityType type,
      bool available,
      String name,
      String link,
      int id,
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
class _$ActivityModelCopyWithImpl<$Res, $Val extends ActivityModel>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? available = null,
    Object? name = null,
    Object? link = null,
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    implements $ActivityModelCopyWith<$Res> {
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
      int id,
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
    extends _$ActivityModelCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? available = null,
    Object? name = null,
    Object? link = null,
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ActivityImpl implements Activity {
  const _$ActivityImpl(
      {required this.type,
      required this.available,
      required this.name,
      required this.link,
      required this.id,
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
  final int id;
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
    return 'ActivityModel(type: $type, available: $available, name: $name, link: $link, id: $id, deadline: $deadline, lectureTime: $lectureTime, attendance: $attendance, gradingStatus: $gradingStatus, timeLeft: $timeLeft, lastModified: $lastModified, description: $description, courseName: $courseName)';
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
            (identical(other.id, id) || other.id == id) &&
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
      id,
      deadline,
      lectureTime,
      attendance,
      gradingStatus,
      timeLeft,
      lastModified,
      description,
      courseName);

  /// Create a copy of ActivityModel
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

abstract class Activity implements ActivityModel {
  const factory Activity(
      {required final ActivityType type,
      required final bool available,
      required final String name,
      required final String link,
      required final int id,
      final DateTime? deadline,
      final String? lectureTime,
      final bool? attendance,
      final String? gradingStatus,
      final String? timeLeft,
      final String? lastModified,
      final String? description,
      final String? courseName}) = _$ActivityImpl;

  factory Activity.fromJson(Map<String, dynamic> json) =
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
  int get id;
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

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
