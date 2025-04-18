// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return SignInSuccess.fromJson(json);
    case 'error':
      return SignInError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SignInResponseModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SignInResponseModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, String refreshToken, bool extract)
        success,
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken, bool extract)?
        success,
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken, bool extract)?
        success,
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SignInResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseModelCopyWith<$Res> {
  factory $SignInResponseModelCopyWith(
          SignInResponseModel value, $Res Function(SignInResponseModel) then) =
      _$SignInResponseModelCopyWithImpl<$Res, SignInResponseModel>;
}

/// @nodoc
class _$SignInResponseModelCopyWithImpl<$Res, $Val extends SignInResponseModel>
    implements $SignInResponseModelCopyWith<$Res> {
  _$SignInResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<$Res> {
  factory _$$SignInSuccessImplCopyWith(
          _$SignInSuccessImpl value, $Res Function(_$SignInSuccessImpl) then) =
      __$$SignInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken, String refreshToken, bool extract});
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<$Res>
    extends _$SignInResponseModelCopyWithImpl<$Res, _$SignInSuccessImpl>
    implements _$$SignInSuccessImplCopyWith<$Res> {
  __$$SignInSuccessImplCopyWithImpl(
      _$SignInSuccessImpl _value, $Res Function(_$SignInSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? extract = null,
  }) {
    return _then(_$SignInSuccessImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      extract: null == extract
          ? _value.extract
          : extract // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInSuccessImpl implements SignInSuccess {
  const _$SignInSuccessImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.extract,
      final String? $type})
      : $type = $type ?? 'success';

  factory _$SignInSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInSuccessImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final bool extract;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignInResponseModel.success(accessToken: $accessToken, refreshToken: $refreshToken, extract: $extract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.extract, extract) || other.extract == extract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, extract);

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<_$SignInSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, String refreshToken, bool extract)
        success,
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return success(accessToken, refreshToken, extract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken, bool extract)?
        success,
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return success?.call(accessToken, refreshToken, extract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken, bool extract)?
        success,
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(accessToken, refreshToken, extract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInSuccessImplToJson(
      this,
    );
  }
}

abstract class SignInSuccess implements SignInResponseModel {
  const factory SignInSuccess(
      {required final String accessToken,
      required final String refreshToken,
      required final bool extract}) = _$SignInSuccessImpl;

  factory SignInSuccess.fromJson(Map<String, dynamic> json) =
      _$SignInSuccessImpl.fromJson;

  String get accessToken;
  String get refreshToken;
  bool get extract;

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInErrorImplCopyWith<$Res> {
  factory _$$SignInErrorImplCopyWith(
          _$SignInErrorImpl value, $Res Function(_$SignInErrorImpl) then) =
      __$$SignInErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$SignInErrorImplCopyWithImpl<$Res>
    extends _$SignInResponseModelCopyWithImpl<$Res, _$SignInErrorImpl>
    implements _$$SignInErrorImplCopyWith<$Res> {
  __$$SignInErrorImplCopyWithImpl(
      _$SignInErrorImpl _value, $Res Function(_$SignInErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$SignInErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInErrorImpl implements SignInError {
  const _$SignInErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$SignInErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignInResponseModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInErrorImplCopyWith<_$SignInErrorImpl> get copyWith =>
      __$$SignInErrorImplCopyWithImpl<_$SignInErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, String refreshToken, bool extract)
        success,
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken, bool extract)?
        success,
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken, bool extract)?
        success,
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
  TResult map<TResult extends Object?>({
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInErrorImplToJson(
      this,
    );
  }
}

abstract class SignInError implements SignInResponseModel {
  const factory SignInError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$SignInErrorImpl;

  factory SignInError.fromJson(Map<String, dynamic> json) =
      _$SignInErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInErrorImplCopyWith<_$SignInErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
