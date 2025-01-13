// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationResponse _$AuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['result']) {
    case 'success':
      return AuthenticationSuccessResponse.fromJson(json);
    case 'signup':
      return AuthenticationSignUpResponse.fromJson(json);
    case 'refresh':
      return AuthenticationRefreshResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'result', 'AuthenticationResponse',
          'Invalid union type "${json['result']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(
            String name, String college, String department, String? major)
        signup,
    required TResult Function(String accessToken) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(
            String name, String college, String department, String? major)?
        signup,
    TResult? Function(String accessToken)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(
            String name, String college, String department, String? major)?
        signup,
    TResult Function(String accessToken)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationSuccessResponse value) success,
    required TResult Function(AuthenticationSignUpResponse value) signup,
    required TResult Function(AuthenticationRefreshResponse value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationSuccessResponse value)? success,
    TResult? Function(AuthenticationSignUpResponse value)? signup,
    TResult? Function(AuthenticationRefreshResponse value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationSuccessResponse value)? success,
    TResult Function(AuthenticationSignUpResponse value)? signup,
    TResult Function(AuthenticationRefreshResponse value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseCopyWith<$Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse value,
          $Res Function(AuthenticationResponse) then) =
      _$AuthenticationResponseCopyWithImpl<$Res, AuthenticationResponse>;
}

/// @nodoc
class _$AuthenticationResponseCopyWithImpl<$Res,
        $Val extends AuthenticationResponse>
    implements $AuthenticationResponseCopyWith<$Res> {
  _$AuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticationSuccessResponseImplCopyWith<$Res> {
  factory _$$AuthenticationSuccessResponseImplCopyWith(
          _$AuthenticationSuccessResponseImpl value,
          $Res Function(_$AuthenticationSuccessResponseImpl) then) =
      __$$AuthenticationSuccessResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$AuthenticationSuccessResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$AuthenticationSuccessResponseImpl>
    implements _$$AuthenticationSuccessResponseImplCopyWith<$Res> {
  __$$AuthenticationSuccessResponseImplCopyWithImpl(
      _$AuthenticationSuccessResponseImpl _value,
      $Res Function(_$AuthenticationSuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$AuthenticationSuccessResponseImpl(
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
class _$AuthenticationSuccessResponseImpl
    implements AuthenticationSuccessResponse {
  const _$AuthenticationSuccessResponseImpl(
      {required this.accessToken,
      required this.refreshToken,
      final String? $type})
      : $type = $type ?? 'success';

  factory _$AuthenticationSuccessResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationSuccessResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @JsonKey(name: 'result')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationResponse.success(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSuccessResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSuccessResponseImplCopyWith<
          _$AuthenticationSuccessResponseImpl>
      get copyWith => __$$AuthenticationSuccessResponseImplCopyWithImpl<
          _$AuthenticationSuccessResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(
            String name, String college, String department, String? major)
        signup,
    required TResult Function(String accessToken) refresh,
  }) {
    return success(accessToken, refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(
            String name, String college, String department, String? major)?
        signup,
    TResult? Function(String accessToken)? refresh,
  }) {
    return success?.call(accessToken, refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(
            String name, String college, String department, String? major)?
        signup,
    TResult Function(String accessToken)? refresh,
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
    required TResult Function(AuthenticationSuccessResponse value) success,
    required TResult Function(AuthenticationSignUpResponse value) signup,
    required TResult Function(AuthenticationRefreshResponse value) refresh,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationSuccessResponse value)? success,
    TResult? Function(AuthenticationSignUpResponse value)? signup,
    TResult? Function(AuthenticationRefreshResponse value)? refresh,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationSuccessResponse value)? success,
    TResult Function(AuthenticationSignUpResponse value)? signup,
    TResult Function(AuthenticationRefreshResponse value)? refresh,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class AuthenticationSuccessResponse implements AuthenticationResponse {
  const factory AuthenticationSuccessResponse(
          {required final String accessToken,
          required final String refreshToken}) =
      _$AuthenticationSuccessResponseImpl;

  factory AuthenticationSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationSuccessResponseImpl.fromJson;

  String get accessToken;
  String get refreshToken;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSuccessResponseImplCopyWith<
          _$AuthenticationSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignUpResponseImplCopyWith<$Res> {
  factory _$$AuthenticationSignUpResponseImplCopyWith(
          _$AuthenticationSignUpResponseImpl value,
          $Res Function(_$AuthenticationSignUpResponseImpl) then) =
      __$$AuthenticationSignUpResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String college, String department, String? major});
}

/// @nodoc
class __$$AuthenticationSignUpResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$AuthenticationSignUpResponseImpl>
    implements _$$AuthenticationSignUpResponseImplCopyWith<$Res> {
  __$$AuthenticationSignUpResponseImplCopyWithImpl(
      _$AuthenticationSignUpResponseImpl _value,
      $Res Function(_$AuthenticationSignUpResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? college = null,
    Object? department = null,
    Object? major = freezed,
  }) {
    return _then(_$AuthenticationSignUpResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      college: null == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationSignUpResponseImpl
    implements AuthenticationSignUpResponse {
  const _$AuthenticationSignUpResponseImpl(
      {required this.name,
      required this.college,
      required this.department,
      required this.major,
      final String? $type})
      : $type = $type ?? 'signup';

  factory _$AuthenticationSignUpResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationSignUpResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String college;
  @override
  final String department;
  @override
  final String? major;

  @JsonKey(name: 'result')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationResponse.signup(name: $name, college: $college, department: $department, major: $major)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignUpResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.major, major) || other.major == major));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, college, department, major);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignUpResponseImplCopyWith<
          _$AuthenticationSignUpResponseImpl>
      get copyWith => __$$AuthenticationSignUpResponseImplCopyWithImpl<
          _$AuthenticationSignUpResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(
            String name, String college, String department, String? major)
        signup,
    required TResult Function(String accessToken) refresh,
  }) {
    return signup(name, college, department, major);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(
            String name, String college, String department, String? major)?
        signup,
    TResult? Function(String accessToken)? refresh,
  }) {
    return signup?.call(name, college, department, major);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(
            String name, String college, String department, String? major)?
        signup,
    TResult Function(String accessToken)? refresh,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(name, college, department, major);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationSuccessResponse value) success,
    required TResult Function(AuthenticationSignUpResponse value) signup,
    required TResult Function(AuthenticationRefreshResponse value) refresh,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationSuccessResponse value)? success,
    TResult? Function(AuthenticationSignUpResponse value)? signup,
    TResult? Function(AuthenticationRefreshResponse value)? refresh,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationSuccessResponse value)? success,
    TResult Function(AuthenticationSignUpResponse value)? signup,
    TResult Function(AuthenticationRefreshResponse value)? refresh,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationSignUpResponseImplToJson(
      this,
    );
  }
}

abstract class AuthenticationSignUpResponse implements AuthenticationResponse {
  const factory AuthenticationSignUpResponse(
      {required final String name,
      required final String college,
      required final String department,
      required final String? major}) = _$AuthenticationSignUpResponseImpl;

  factory AuthenticationSignUpResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationSignUpResponseImpl.fromJson;

  String get name;
  String get college;
  String get department;
  String? get major;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSignUpResponseImplCopyWith<
          _$AuthenticationSignUpResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationRefreshResponseImplCopyWith<$Res> {
  factory _$$AuthenticationRefreshResponseImplCopyWith(
          _$AuthenticationRefreshResponseImpl value,
          $Res Function(_$AuthenticationRefreshResponseImpl) then) =
      __$$AuthenticationRefreshResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$AuthenticationRefreshResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$AuthenticationRefreshResponseImpl>
    implements _$$AuthenticationRefreshResponseImplCopyWith<$Res> {
  __$$AuthenticationRefreshResponseImplCopyWithImpl(
      _$AuthenticationRefreshResponseImpl _value,
      $Res Function(_$AuthenticationRefreshResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$AuthenticationRefreshResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationRefreshResponseImpl
    implements AuthenticationRefreshResponse {
  const _$AuthenticationRefreshResponseImpl(
      {required this.accessToken, final String? $type})
      : $type = $type ?? 'refresh';

  factory _$AuthenticationRefreshResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationRefreshResponseImplFromJson(json);

  @override
  final String accessToken;

  @JsonKey(name: 'result')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationResponse.refresh(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRefreshResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRefreshResponseImplCopyWith<
          _$AuthenticationRefreshResponseImpl>
      get copyWith => __$$AuthenticationRefreshResponseImplCopyWithImpl<
          _$AuthenticationRefreshResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String refreshToken) success,
    required TResult Function(
            String name, String college, String department, String? major)
        signup,
    required TResult Function(String accessToken) refresh,
  }) {
    return refresh(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, String refreshToken)? success,
    TResult? Function(
            String name, String college, String department, String? major)?
        signup,
    TResult? Function(String accessToken)? refresh,
  }) {
    return refresh?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String refreshToken)? success,
    TResult Function(
            String name, String college, String department, String? major)?
        signup,
    TResult Function(String accessToken)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationSuccessResponse value) success,
    required TResult Function(AuthenticationSignUpResponse value) signup,
    required TResult Function(AuthenticationRefreshResponse value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationSuccessResponse value)? success,
    TResult? Function(AuthenticationSignUpResponse value)? signup,
    TResult? Function(AuthenticationRefreshResponse value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationSuccessResponse value)? success,
    TResult Function(AuthenticationSignUpResponse value)? signup,
    TResult Function(AuthenticationRefreshResponse value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationRefreshResponseImplToJson(
      this,
    );
  }
}

abstract class AuthenticationRefreshResponse implements AuthenticationResponse {
  const factory AuthenticationRefreshResponse(
          {required final String accessToken}) =
      _$AuthenticationRefreshResponseImpl;

  factory AuthenticationRefreshResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationRefreshResponseImpl.fromJson;

  String get accessToken;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationRefreshResponseImplCopyWith<
          _$AuthenticationRefreshResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
