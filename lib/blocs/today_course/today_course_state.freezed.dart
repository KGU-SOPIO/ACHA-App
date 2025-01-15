// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_course_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodayCourseState {
  TodayCourseStatus get status => throw _privateConstructorUsedError;
  Courses? get todayCourses => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TodayCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayCourseStateCopyWith<TodayCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayCourseStateCopyWith<$Res> {
  factory $TodayCourseStateCopyWith(
          TodayCourseState value, $Res Function(TodayCourseState) then) =
      _$TodayCourseStateCopyWithImpl<$Res, TodayCourseState>;
  @useResult
  $Res call(
      {TodayCourseStatus status, Courses? todayCourses, String? errorMessage});

  $CoursesCopyWith<$Res>? get todayCourses;
}

/// @nodoc
class _$TodayCourseStateCopyWithImpl<$Res, $Val extends TodayCourseState>
    implements $TodayCourseStateCopyWith<$Res> {
  _$TodayCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayCourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? todayCourses = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodayCourseStatus,
      todayCourses: freezed == todayCourses
          ? _value.todayCourses
          : todayCourses // ignore: cast_nullable_to_non_nullable
              as Courses?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TodayCourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoursesCopyWith<$Res>? get todayCourses {
    if (_value.todayCourses == null) {
      return null;
    }

    return $CoursesCopyWith<$Res>(_value.todayCourses!, (value) {
      return _then(_value.copyWith(todayCourses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodayCourseStateImplCopyWith<$Res>
    implements $TodayCourseStateCopyWith<$Res> {
  factory _$$TodayCourseStateImplCopyWith(_$TodayCourseStateImpl value,
          $Res Function(_$TodayCourseStateImpl) then) =
      __$$TodayCourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TodayCourseStatus status, Courses? todayCourses, String? errorMessage});

  @override
  $CoursesCopyWith<$Res>? get todayCourses;
}

/// @nodoc
class __$$TodayCourseStateImplCopyWithImpl<$Res>
    extends _$TodayCourseStateCopyWithImpl<$Res, _$TodayCourseStateImpl>
    implements _$$TodayCourseStateImplCopyWith<$Res> {
  __$$TodayCourseStateImplCopyWithImpl(_$TodayCourseStateImpl _value,
      $Res Function(_$TodayCourseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodayCourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? todayCourses = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TodayCourseStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodayCourseStatus,
      todayCourses: freezed == todayCourses
          ? _value.todayCourses
          : todayCourses // ignore: cast_nullable_to_non_nullable
              as Courses?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TodayCourseStateImpl implements _TodayCourseState {
  const _$TodayCourseStateImpl(
      {required this.status, this.todayCourses, this.errorMessage});

  @override
  final TodayCourseStatus status;
  @override
  final Courses? todayCourses;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TodayCourseState(status: $status, todayCourses: $todayCourses, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayCourseStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.todayCourses, todayCourses) ||
                other.todayCourses == todayCourses) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, todayCourses, errorMessage);

  /// Create a copy of TodayCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayCourseStateImplCopyWith<_$TodayCourseStateImpl> get copyWith =>
      __$$TodayCourseStateImplCopyWithImpl<_$TodayCourseStateImpl>(
          this, _$identity);
}

abstract class _TodayCourseState implements TodayCourseState {
  const factory _TodayCourseState(
      {required final TodayCourseStatus status,
      final Courses? todayCourses,
      final String? errorMessage}) = _$TodayCourseStateImpl;

  @override
  TodayCourseStatus get status;
  @override
  Courses? get todayCourses;
  @override
  String? get errorMessage;

  /// Create a copy of TodayCourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayCourseStateImplCopyWith<_$TodayCourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
