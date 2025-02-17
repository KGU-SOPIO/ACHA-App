// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return File.fromJson(json);
    case 'error':
      return FileError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FileModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FileModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String link) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String link)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String link)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(File value) $default, {
    required TResult Function(FileError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(File value)? $default, {
    TResult? Function(FileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(File value)? $default, {
    TResult Function(FileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FileImplCopyWith<$Res> {
  factory _$$FileImplCopyWith(
          _$FileImpl value, $Res Function(_$FileImpl) then) =
      __$$FileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String link});
}

/// @nodoc
class __$$FileImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileImpl>
    implements _$$FileImplCopyWith<$Res> {
  __$$FileImplCopyWithImpl(_$FileImpl _value, $Res Function(_$FileImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
  }) {
    return _then(_$FileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileImpl implements File {
  const _$FileImpl(
      {required this.name, required this.link, final String? $type})
      : $type = $type ?? 'default';

  factory _$FileImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileImplFromJson(json);

  @override
  final String name;
  @override
  final String link;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileModel(name: $name, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, link);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      __$$FileImplCopyWithImpl<_$FileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String link) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(name, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String link)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(name, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String link)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(File value) $default, {
    required TResult Function(FileError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(File value)? $default, {
    TResult? Function(FileError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(File value)? $default, {
    TResult Function(FileError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileImplToJson(
      this,
    );
  }
}

abstract class File implements FileModel {
  const factory File({required final String name, required final String link}) =
      _$FileImpl;

  factory File.fromJson(Map<String, dynamic> json) = _$FileImpl.fromJson;

  String get name;
  String get link;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileErrorImplCopyWith<$Res> {
  factory _$$FileErrorImplCopyWith(
          _$FileErrorImpl value, $Res Function(_$FileErrorImpl) then) =
      __$$FileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$FileErrorImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileErrorImpl>
    implements _$$FileErrorImplCopyWith<$Res> {
  __$$FileErrorImplCopyWithImpl(
      _$FileErrorImpl _value, $Res Function(_$FileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$FileErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileErrorImpl implements FileError {
  const _$FileErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$FileErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileErrorImplCopyWith<_$FileErrorImpl> get copyWith =>
      __$$FileErrorImplCopyWithImpl<_$FileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String link) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String link)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String link)? $default, {
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
    TResult Function(File value) $default, {
    required TResult Function(FileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(File value)? $default, {
    TResult? Function(FileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(File value)? $default, {
    TResult Function(FileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileErrorImplToJson(
      this,
    );
  }
}

abstract class FileError implements FileModel {
  const factory FileError(
      {@ErrorCodeConverter() required final ErrorCode code}) = _$FileErrorImpl;

  factory FileError.fromJson(Map<String, dynamic> json) =
      _$FileErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileErrorImplCopyWith<_$FileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
