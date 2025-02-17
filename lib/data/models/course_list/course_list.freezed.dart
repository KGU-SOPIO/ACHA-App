// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseListModel _$CourseListModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return CourseList.fromJson(json);
    case 'error':
      return CourseListError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CourseListModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CourseListModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Course> courseList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Course> courseList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Course> courseList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CourseList value) $default, {
    required TResult Function(CourseListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CourseList value)? $default, {
    TResult? Function(CourseListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CourseList value)? $default, {
    TResult Function(CourseListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CourseListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListModelCopyWith<$Res> {
  factory $CourseListModelCopyWith(
          CourseListModel value, $Res Function(CourseListModel) then) =
      _$CourseListModelCopyWithImpl<$Res, CourseListModel>;
}

/// @nodoc
class _$CourseListModelCopyWithImpl<$Res, $Val extends CourseListModel>
    implements $CourseListModelCopyWith<$Res> {
  _$CourseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CourseListImplCopyWith<$Res> {
  factory _$$CourseListImplCopyWith(
          _$CourseListImpl value, $Res Function(_$CourseListImpl) then) =
      __$$CourseListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Course> courseList});
}

/// @nodoc
class __$$CourseListImplCopyWithImpl<$Res>
    extends _$CourseListModelCopyWithImpl<$Res, _$CourseListImpl>
    implements _$$CourseListImplCopyWith<$Res> {
  __$$CourseListImplCopyWithImpl(
      _$CourseListImpl _value, $Res Function(_$CourseListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseList = null,
  }) {
    return _then(_$CourseListImpl(
      courseList: null == courseList
          ? _value._courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseListImpl implements CourseList {
  const _$CourseListImpl(
      {required final List<Course> courseList, final String? $type})
      : _courseList = courseList,
        $type = $type ?? 'default';

  factory _$CourseListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseListImplFromJson(json);

  final List<Course> _courseList;
  @override
  List<Course> get courseList {
    if (_courseList is EqualUnmodifiableListView) return _courseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseList);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CourseListModel(courseList: $courseList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListImpl &&
            const DeepCollectionEquality()
                .equals(other._courseList, _courseList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_courseList));

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseListImplCopyWith<_$CourseListImpl> get copyWith =>
      __$$CourseListImplCopyWithImpl<_$CourseListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Course> courseList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(courseList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Course> courseList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(courseList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Course> courseList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(courseList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CourseList value) $default, {
    required TResult Function(CourseListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CourseList value)? $default, {
    TResult? Function(CourseListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CourseList value)? $default, {
    TResult Function(CourseListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseListImplToJson(
      this,
    );
  }
}

abstract class CourseList implements CourseListModel {
  const factory CourseList({required final List<Course> courseList}) =
      _$CourseListImpl;

  factory CourseList.fromJson(Map<String, dynamic> json) =
      _$CourseListImpl.fromJson;

  List<Course> get courseList;

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseListImplCopyWith<_$CourseListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseListErrorImplCopyWith<$Res> {
  factory _$$CourseListErrorImplCopyWith(_$CourseListErrorImpl value,
          $Res Function(_$CourseListErrorImpl) then) =
      __$$CourseListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$CourseListErrorImplCopyWithImpl<$Res>
    extends _$CourseListModelCopyWithImpl<$Res, _$CourseListErrorImpl>
    implements _$$CourseListErrorImplCopyWith<$Res> {
  __$$CourseListErrorImplCopyWithImpl(
      _$CourseListErrorImpl _value, $Res Function(_$CourseListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CourseListErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseListErrorImpl implements CourseListError {
  const _$CourseListErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$CourseListErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseListErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CourseListModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseListErrorImplCopyWith<_$CourseListErrorImpl> get copyWith =>
      __$$CourseListErrorImplCopyWithImpl<_$CourseListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Course> courseList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Course> courseList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Course> courseList)? $default, {
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
    TResult Function(CourseList value) $default, {
    required TResult Function(CourseListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CourseList value)? $default, {
    TResult? Function(CourseListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CourseList value)? $default, {
    TResult Function(CourseListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseListErrorImplToJson(
      this,
    );
  }
}

abstract class CourseListError implements CourseListModel {
  const factory CourseListError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$CourseListErrorImpl;

  factory CourseListError.fromJson(Map<String, dynamic> json) =
      _$CourseListErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of CourseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseListErrorImplCopyWith<_$CourseListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
