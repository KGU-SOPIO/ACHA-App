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
  CourseList? get courseList => throw _privateConstructorUsedError;
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
  $Res call(
      {CourseListStatus status, CourseList? courseList, String? errorMessage});
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
    Object? courseList = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseListStatus,
      courseList: freezed == courseList
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $Res call(
      {CourseListStatus status, CourseList? courseList, String? errorMessage});
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
    Object? courseList = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CourseListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseListStatus,
      courseList: freezed == courseList
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
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
      {required this.status, this.courseList, this.errorMessage});

  @override
  final CourseListStatus status;
  @override
  final CourseList? courseList;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CourseListState(status: $status, courseList: $courseList, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.courseList, courseList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(courseList), errorMessage);

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
      final CourseList? courseList,
      final String? errorMessage}) = _$CourseListStateImpl;

  @override
  CourseListStatus get status;
  @override
  CourseList? get courseList;
  @override
  String? get errorMessage;

  /// Create a copy of CourseListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseListStateImplCopyWith<_$CourseListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
