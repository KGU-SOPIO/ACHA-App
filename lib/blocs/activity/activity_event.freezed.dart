// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res, ActivityEvent>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res, $Val extends ActivityEvent>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchActivitiesImplCopyWith<$Res> {
  factory _$$FetchActivitiesImplCopyWith(_$FetchActivitiesImpl value,
          $Res Function(_$FetchActivitiesImpl) then) =
      __$$FetchActivitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchActivitiesImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$FetchActivitiesImpl>
    implements _$$FetchActivitiesImplCopyWith<$Res> {
  __$$FetchActivitiesImplCopyWithImpl(
      _$FetchActivitiesImpl _value, $Res Function(_$FetchActivitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchActivitiesImpl implements FetchActivities {
  const _$FetchActivitiesImpl();

  @override
  String toString() {
    return 'ActivityEvent.fetchActivities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchActivitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
  }) {
    return fetchActivities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
  }) {
    return fetchActivities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    required TResult orElse(),
  }) {
    if (fetchActivities != null) {
      return fetchActivities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
  }) {
    return fetchActivities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
  }) {
    return fetchActivities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    required TResult orElse(),
  }) {
    if (fetchActivities != null) {
      return fetchActivities(this);
    }
    return orElse();
  }
}

abstract class FetchActivities implements ActivityEvent {
  const factory FetchActivities() = _$FetchActivitiesImpl;
}
