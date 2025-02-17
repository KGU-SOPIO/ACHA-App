// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCourseActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCourseActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCourseActivities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCourseActivities value)
        fetchCourseActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCourseActivities value)? fetchCourseActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCourseActivities value)? fetchCourseActivities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEventCopyWith<$Res> {
  factory $CourseEventCopyWith(
          CourseEvent value, $Res Function(CourseEvent) then) =
      _$CourseEventCopyWithImpl<$Res, CourseEvent>;
}

/// @nodoc
class _$CourseEventCopyWithImpl<$Res, $Val extends CourseEvent>
    implements $CourseEventCopyWith<$Res> {
  _$CourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchCourseActivitiesImplCopyWith<$Res> {
  factory _$$FetchCourseActivitiesImplCopyWith(
          _$FetchCourseActivitiesImpl value,
          $Res Function(_$FetchCourseActivitiesImpl) then) =
      __$$FetchCourseActivitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseActivitiesImplCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$FetchCourseActivitiesImpl>
    implements _$$FetchCourseActivitiesImplCopyWith<$Res> {
  __$$FetchCourseActivitiesImplCopyWithImpl(_$FetchCourseActivitiesImpl _value,
      $Res Function(_$FetchCourseActivitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCourseActivitiesImpl implements FetchCourseActivities {
  const _$FetchCourseActivitiesImpl();

  @override
  String toString() {
    return 'CourseEvent.fetchCourseActivities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseActivitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCourseActivities,
  }) {
    return fetchCourseActivities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCourseActivities,
  }) {
    return fetchCourseActivities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCourseActivities,
    required TResult orElse(),
  }) {
    if (fetchCourseActivities != null) {
      return fetchCourseActivities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCourseActivities value)
        fetchCourseActivities,
  }) {
    return fetchCourseActivities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCourseActivities value)? fetchCourseActivities,
  }) {
    return fetchCourseActivities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCourseActivities value)? fetchCourseActivities,
    required TResult orElse(),
  }) {
    if (fetchCourseActivities != null) {
      return fetchCourseActivities(this);
    }
    return orElse();
  }
}

abstract class FetchCourseActivities implements CourseEvent {
  const factory FetchCourseActivities() = _$FetchCourseActivitiesImpl;
}
