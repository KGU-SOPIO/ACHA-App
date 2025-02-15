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

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return SignInSuccess.fromJson(json);
    case 'fetchUserData':
      return FetchUserData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SignInResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SignInResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(@ErrorCodeConverter() ErrorCode code)
        fetchUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? fetchUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(@ErrorCodeConverter() ErrorCode code)? fetchUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInSuccess value) success,
    required TResult Function(FetchUserData value) fetchUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(FetchUserData value)? fetchUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInSuccess value)? success,
    TResult Function(FetchUserData value)? fetchUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SignInResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res, SignInResponse>;
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res, $Val extends SignInResponse>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<$Res> {
  factory _$$SignInSuccessImplCopyWith(
          _$SignInSuccessImpl value, $Res Function(_$SignInSuccessImpl) then) =
      __$$SignInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$SignInSuccessImpl>
    implements _$$SignInSuccessImplCopyWith<$Res> {
  __$$SignInSuccessImplCopyWithImpl(
      _$SignInSuccessImpl _value, $Res Function(_$SignInSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInSuccessImpl implements SignInSuccess {
  const _$SignInSuccessImpl(
      {required this.accessToken,
      required this.refreshToken,
      final String? $type})
      : $type = $type ?? 'success';

  factory _$SignInSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInSuccessImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignInResponse.success(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<_$SignInSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(@ErrorCodeConverter() ErrorCode code)
        fetchUserData,
  }) {
    return success(accessToken, refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? fetchUserData,
  }) {
    return success?.call(accessToken, refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(@ErrorCodeConverter() ErrorCode code)? fetchUserData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(accessToken, refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInSuccess value) success,
    required TResult Function(FetchUserData value) fetchUserData,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(FetchUserData value)? fetchUserData,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInSuccess value)? success,
    TResult Function(FetchUserData value)? fetchUserData,
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

abstract class SignInSuccess implements SignInResponse {
  const factory SignInSuccess(
      {required final String accessToken,
      required final String refreshToken}) = _$SignInSuccessImpl;

  factory SignInSuccess.fromJson(Map<String, dynamic> json) =
      _$SignInSuccessImpl.fromJson;

  String get accessToken;
  String get refreshToken;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchUserDataImplCopyWith<$Res> {
  factory _$$FetchUserDataImplCopyWith(
          _$FetchUserDataImpl value, $Res Function(_$FetchUserDataImpl) then) =
      __$$FetchUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$FetchUserDataImplCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$FetchUserDataImpl>
    implements _$$FetchUserDataImplCopyWith<$Res> {
  __$$FetchUserDataImplCopyWithImpl(
      _$FetchUserDataImpl _value, $Res Function(_$FetchUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$FetchUserDataImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchUserDataImpl implements FetchUserData {
  const _$FetchUserDataImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'fetchUserData';

  factory _$FetchUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchUserDataImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignInResponse.fetchUserData(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserDataImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserDataImplCopyWith<_$FetchUserDataImpl> get copyWith =>
      __$$FetchUserDataImplCopyWithImpl<_$FetchUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(@ErrorCodeConverter() ErrorCode code)
        fetchUserData,
  }) {
    return fetchUserData(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? fetchUserData,
  }) {
    return fetchUserData?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(@ErrorCodeConverter() ErrorCode code)? fetchUserData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInSuccess value) success,
    required TResult Function(FetchUserData value) fetchUserData,
  }) {
    return fetchUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(FetchUserData value)? fetchUserData,
  }) {
    return fetchUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInSuccess value)? success,
    TResult Function(FetchUserData value)? fetchUserData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchUserDataImplToJson(
      this,
    );
  }
}

abstract class FetchUserData implements SignInResponse {
  const factory FetchUserData(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$FetchUserDataImpl;

  factory FetchUserData.fromJson(Map<String, dynamic> json) =
      _$FetchUserDataImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchUserDataImplCopyWith<_$FetchUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
