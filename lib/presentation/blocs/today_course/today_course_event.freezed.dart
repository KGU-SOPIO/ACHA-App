// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_course_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodayCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodayCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodayCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodayCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodayCourses value) fetchTodayCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodayCourses value)? fetchTodayCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodayCourses value)? fetchTodayCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayCourseEventCopyWith<$Res> {
  factory $TodayCourseEventCopyWith(
          TodayCourseEvent value, $Res Function(TodayCourseEvent) then) =
      _$TodayCourseEventCopyWithImpl<$Res, TodayCourseEvent>;
}

/// @nodoc
class _$TodayCourseEventCopyWithImpl<$Res, $Val extends TodayCourseEvent>
    implements $TodayCourseEventCopyWith<$Res> {
  _$TodayCourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayCourseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchTodayCoursesImplCopyWith<$Res> {
  factory _$$FetchTodayCoursesImplCopyWith(_$FetchTodayCoursesImpl value,
          $Res Function(_$FetchTodayCoursesImpl) then) =
      __$$FetchTodayCoursesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTodayCoursesImplCopyWithImpl<$Res>
    extends _$TodayCourseEventCopyWithImpl<$Res, _$FetchTodayCoursesImpl>
    implements _$$FetchTodayCoursesImplCopyWith<$Res> {
  __$$FetchTodayCoursesImplCopyWithImpl(_$FetchTodayCoursesImpl _value,
      $Res Function(_$FetchTodayCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodayCourseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTodayCoursesImpl implements FetchTodayCourses {
  const _$FetchTodayCoursesImpl();

  @override
  String toString() {
    return 'TodayCourseEvent.fetchTodayCourses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTodayCoursesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodayCourses,
  }) {
    return fetchTodayCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodayCourses,
  }) {
    return fetchTodayCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodayCourses,
    required TResult orElse(),
  }) {
    if (fetchTodayCourses != null) {
      return fetchTodayCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodayCourses value) fetchTodayCourses,
  }) {
    return fetchTodayCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodayCourses value)? fetchTodayCourses,
  }) {
    return fetchTodayCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodayCourses value)? fetchTodayCourses,
    required TResult orElse(),
  }) {
    if (fetchTodayCourses != null) {
      return fetchTodayCourses(this);
    }
    return orElse();
  }
}

abstract class FetchTodayCourses implements TodayCourseEvent {
  const factory FetchTodayCourses() = _$FetchTodayCoursesImpl;
}
