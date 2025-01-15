// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseListState {
  CourseListStatus get status => throw _privateConstructorUsedError;
  Courses? get courses => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseListStateCopyWith<CourseListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListStateCopyWith<$Res> {
  factory $CourseListStateCopyWith(
          CourseListState value, $Res Function(CourseListState) then) =
      _$CourseListStateCopyWithImpl<$Res, CourseListState>;
  @useResult
  $Res call({CourseListStatus status, Courses? courses, String? errorMessage});

  $CoursesCopyWith<$Res>? get courses;
}

/// @nodoc
class _$CourseListStateCopyWithImpl<$Res, $Val extends CourseListState>
    implements $CourseListStateCopyWith<$Res> {
  _$CourseListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? courses = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseListStatus,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as Courses?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoursesCopyWith<$Res>? get courses {
    if (_value.courses == null) {
      return null;
    }

    return $CoursesCopyWith<$Res>(_value.courses!, (value) {
      return _then(_value.copyWith(courses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseListStateImplCopyWith<$Res>
    implements $CourseListStateCopyWith<$Res> {
  factory _$$CourseListStateImplCopyWith(_$CourseListStateImpl value,
          $Res Function(_$CourseListStateImpl) then) =
      __$$CourseListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseListStatus status, Courses? courses, String? errorMessage});

  @override
  $CoursesCopyWith<$Res>? get courses;
}

/// @nodoc
class __$$CourseListStateImplCopyWithImpl<$Res>
    extends _$CourseListStateCopyWithImpl<$Res, _$CourseListStateImpl>
    implements _$$CourseListStateImplCopyWith<$Res> {
  __$$CourseListStateImplCopyWithImpl(
      _$CourseListStateImpl _value, $Res Function(_$CourseListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? courses = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CourseListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseListStatus,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as Courses?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourseListStateImpl implements _CourseListState {
  const _$CourseListStateImpl(
      {required this.status, this.courses, this.errorMessage});

  @override
  final CourseListStatus status;
  @override
  final Courses? courses;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CourseListState(status: $status, courses: $courses, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.courses, courses) || other.courses == courses) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, courses, errorMessage);

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseListStateImplCopyWith<_$CourseListStateImpl> get copyWith =>
      __$$CourseListStateImplCopyWithImpl<_$CourseListStateImpl>(
          this, _$identity);
}

abstract class _CourseListState implements CourseListState {
  const factory _CourseListState(
      {required final CourseListStatus status,
      final Courses? courses,
      final String? errorMessage}) = _$CourseListStateImpl;

  @override
  CourseListStatus get status;
  @override
  Courses? get courses;
  @override
  String? get errorMessage;

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseListStateImplCopyWith<_$CourseListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
