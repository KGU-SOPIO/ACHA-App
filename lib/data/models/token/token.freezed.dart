// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenReissueResponseModel _$TokenReissueResponseModelFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return TokenReissueResponse.fromJson(json);
    case 'error':
      return TokenReissueError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'TokenReissueResponseModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TokenReissueResponseModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String accessToken) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String accessToken)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String accessToken)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TokenReissueResponse value) $default, {
    required TResult Function(TokenReissueError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TokenReissueResponse value)? $default, {
    TResult? Function(TokenReissueError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TokenReissueResponse value)? $default, {
    TResult Function(TokenReissueError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TokenReissueResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenReissueResponseModelCopyWith<$Res> {
  factory $TokenReissueResponseModelCopyWith(TokenReissueResponseModel value,
          $Res Function(TokenReissueResponseModel) then) =
      _$TokenReissueResponseModelCopyWithImpl<$Res, TokenReissueResponseModel>;
}

/// @nodoc
class _$TokenReissueResponseModelCopyWithImpl<$Res,
        $Val extends TokenReissueResponseModel>
    implements $TokenReissueResponseModelCopyWith<$Res> {
  _$TokenReissueResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TokenReissueResponseImplCopyWith<$Res> {
  factory _$$TokenReissueResponseImplCopyWith(_$TokenReissueResponseImpl value,
          $Res Function(_$TokenReissueResponseImpl) then) =
      __$$TokenReissueResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$TokenReissueResponseImplCopyWithImpl<$Res>
    extends _$TokenReissueResponseModelCopyWithImpl<$Res,
        _$TokenReissueResponseImpl>
    implements _$$TokenReissueResponseImplCopyWith<$Res> {
  __$$TokenReissueResponseImplCopyWithImpl(_$TokenReissueResponseImpl _value,
      $Res Function(_$TokenReissueResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$TokenReissueResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenReissueResponseImpl implements TokenReissueResponse {
  const _$TokenReissueResponseImpl(
      {required this.accessToken, final String? $type})
      : $type = $type ?? 'default';

  factory _$TokenReissueResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenReissueResponseImplFromJson(json);

  @override
  final String accessToken;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenReissueResponseModel(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenReissueResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenReissueResponseImplCopyWith<_$TokenReissueResponseImpl>
      get copyWith =>
          __$$TokenReissueResponseImplCopyWithImpl<_$TokenReissueResponseImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String accessToken) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String accessToken)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String accessToken)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TokenReissueResponse value) $default, {
    required TResult Function(TokenReissueError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TokenReissueResponse value)? $default, {
    TResult? Function(TokenReissueError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TokenReissueResponse value)? $default, {
    TResult Function(TokenReissueError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenReissueResponseImplToJson(
      this,
    );
  }
}

abstract class TokenReissueResponse implements TokenReissueResponseModel {
  const factory TokenReissueResponse({required final String accessToken}) =
      _$TokenReissueResponseImpl;

  factory TokenReissueResponse.fromJson(Map<String, dynamic> json) =
      _$TokenReissueResponseImpl.fromJson;

  String get accessToken;

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenReissueResponseImplCopyWith<_$TokenReissueResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenReissueErrorImplCopyWith<$Res> {
  factory _$$TokenReissueErrorImplCopyWith(_$TokenReissueErrorImpl value,
          $Res Function(_$TokenReissueErrorImpl) then) =
      __$$TokenReissueErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$TokenReissueErrorImplCopyWithImpl<$Res>
    extends _$TokenReissueResponseModelCopyWithImpl<$Res,
        _$TokenReissueErrorImpl>
    implements _$$TokenReissueErrorImplCopyWith<$Res> {
  __$$TokenReissueErrorImplCopyWithImpl(_$TokenReissueErrorImpl _value,
      $Res Function(_$TokenReissueErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$TokenReissueErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenReissueErrorImpl implements TokenReissueError {
  const _$TokenReissueErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$TokenReissueErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenReissueErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenReissueResponseModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenReissueErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenReissueErrorImplCopyWith<_$TokenReissueErrorImpl> get copyWith =>
      __$$TokenReissueErrorImplCopyWithImpl<_$TokenReissueErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String accessToken) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String accessToken)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String accessToken)? $default, {
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
    TResult Function(TokenReissueResponse value) $default, {
    required TResult Function(TokenReissueError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TokenReissueResponse value)? $default, {
    TResult? Function(TokenReissueError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TokenReissueResponse value)? $default, {
    TResult Function(TokenReissueError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenReissueErrorImplToJson(
      this,
    );
  }
}

abstract class TokenReissueError implements TokenReissueResponseModel {
  const factory TokenReissueError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$TokenReissueErrorImpl;

  factory TokenReissueError.fromJson(Map<String, dynamic> json) =
      _$TokenReissueErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of TokenReissueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenReissueErrorImplCopyWith<_$TokenReissueErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
