// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return Course.fromJson(json);
    case 'error':
      return CourseError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CourseModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CourseModel {
  Object get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)
        $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)?
        $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)?
        $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Course value) $default, {
    required TResult Function(CourseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Course value)? $default, {
    TResult? Function(CourseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Course value)? $default, {
    TResult Function(CourseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String professor,
      String lectureRoom,
      String code,
      DateTime? deadline,
      String? link,
      CourseActivityList? courseActivityList,
      NoticeList? noticeList});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? professor = null,
    Object? lectureRoom = null,
    Object? code = null,
    Object? deadline = freezed,
    Object? link = freezed,
    Object? courseActivityList = freezed,
    Object? noticeList = freezed,
  }) {
    return _then(_$CourseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      lectureRoom: null == lectureRoom
          ? _value.lectureRoom
          : lectureRoom // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      courseActivityList: freezed == courseActivityList
          ? _value.courseActivityList
          : courseActivityList // ignore: cast_nullable_to_non_nullable
              as CourseActivityList?,
      noticeList: freezed == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as NoticeList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements Course {
  const _$CourseImpl(
      {required this.name,
      required this.professor,
      required this.lectureRoom,
      required this.code,
      this.deadline,
      this.link,
      this.courseActivityList,
      this.noticeList,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String name;
  @override
  final String professor;
  @override
  final String lectureRoom;
  @override
  final String code;
  @override
  final DateTime? deadline;
  @override
  final String? link;
  @override
  final CourseActivityList? courseActivityList;
  @override
  final NoticeList? noticeList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CourseModel(name: $name, professor: $professor, lectureRoom: $lectureRoom, code: $code, deadline: $deadline, link: $link, courseActivityList: $courseActivityList, noticeList: $noticeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.lectureRoom, lectureRoom) ||
                other.lectureRoom == lectureRoom) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality()
                .equals(other.courseActivityList, courseActivityList) &&
            const DeepCollectionEquality()
                .equals(other.noticeList, noticeList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      professor,
      lectureRoom,
      code,
      deadline,
      link,
      const DeepCollectionEquality().hash(courseActivityList),
      const DeepCollectionEquality().hash(noticeList));

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)
        $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(name, professor, lectureRoom, code, deadline, link,
        courseActivityList, noticeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)?
        $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(name, professor, lectureRoom, code, deadline, link,
        courseActivityList, noticeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)?
        $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, professor, lectureRoom, code, deadline, link,
          courseActivityList, noticeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Course value) $default, {
    required TResult Function(CourseError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Course value)? $default, {
    TResult? Function(CourseError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Course value)? $default, {
    TResult Function(CourseError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class Course implements CourseModel {
  const factory Course(
      {required final String name,
      required final String professor,
      required final String lectureRoom,
      required final String code,
      final DateTime? deadline,
      final String? link,
      final CourseActivityList? courseActivityList,
      final NoticeList? noticeList}) = _$CourseImpl;

  factory Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  String get name;
  String get professor;
  String get lectureRoom;
  @override
  String get code;
  DateTime? get deadline;
  String? get link;
  CourseActivityList? get courseActivityList;
  NoticeList? get noticeList;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseErrorImplCopyWith<$Res> {
  factory _$$CourseErrorImplCopyWith(
          _$CourseErrorImpl value, $Res Function(_$CourseErrorImpl) then) =
      __$$CourseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$CourseErrorImplCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$CourseErrorImpl>
    implements _$$CourseErrorImplCopyWith<$Res> {
  __$$CourseErrorImplCopyWithImpl(
      _$CourseErrorImpl _value, $Res Function(_$CourseErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CourseErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseErrorImpl implements CourseError {
  const _$CourseErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$CourseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CourseModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseErrorImplCopyWith<_$CourseErrorImpl> get copyWith =>
      __$$CourseErrorImplCopyWithImpl<_$CourseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)
        $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)?
        $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String professor,
            String lectureRoom,
            String code,
            DateTime? deadline,
            String? link,
            CourseActivityList? courseActivityList,
            NoticeList? noticeList)?
        $default, {
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
    TResult Function(Course value) $default, {
    required TResult Function(CourseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Course value)? $default, {
    TResult? Function(CourseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Course value)? $default, {
    TResult Function(CourseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseErrorImplToJson(
      this,
    );
  }
}

abstract class CourseError implements CourseModel {
  const factory CourseError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$CourseErrorImpl;

  factory CourseError.fromJson(Map<String, dynamic> json) =
      _$CourseErrorImpl.fromJson;

  @override
  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseErrorImplCopyWith<_$CourseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
