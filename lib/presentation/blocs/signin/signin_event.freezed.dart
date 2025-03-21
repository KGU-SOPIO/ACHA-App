// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeSignInStatusImplCopyWith<$Res> {
  factory _$$ChangeSignInStatusImplCopyWith(_$ChangeSignInStatusImpl value,
          $Res Function(_$ChangeSignInStatusImpl) then) =
      __$$ChangeSignInStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInStatus status});
}

/// @nodoc
class __$$ChangeSignInStatusImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ChangeSignInStatusImpl>
    implements _$$ChangeSignInStatusImplCopyWith<$Res> {
  __$$ChangeSignInStatusImplCopyWithImpl(_$ChangeSignInStatusImpl _value,
      $Res Function(_$ChangeSignInStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeSignInStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignInStatus,
    ));
  }
}

/// @nodoc

class _$ChangeSignInStatusImpl implements ChangeSignInStatus {
  const _$ChangeSignInStatusImpl({required this.status});

  @override
  final SignInStatus status;

  @override
  String toString() {
    return 'SignInEvent.changeSignInStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSignInStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSignInStatusImplCopyWith<_$ChangeSignInStatusImpl> get copyWith =>
      __$$ChangeSignInStatusImplCopyWithImpl<_$ChangeSignInStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return changeSignInStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return changeSignInStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (changeSignInStatus != null) {
      return changeSignInStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return changeSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return changeSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (changeSignInStatus != null) {
      return changeSignInStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeSignInStatus implements SignInEvent {
  const factory ChangeSignInStatus({required final SignInStatus status}) =
      _$ChangeSignInStatusImpl;

  SignInStatus get status;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSignInStatusImplCopyWith<_$ChangeSignInStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputStudentIdImplCopyWith<$Res> {
  factory _$$InputStudentIdImplCopyWith(_$InputStudentIdImpl value,
          $Res Function(_$InputStudentIdImpl) then) =
      __$$InputStudentIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId});
}

/// @nodoc
class __$$InputStudentIdImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$InputStudentIdImpl>
    implements _$$InputStudentIdImplCopyWith<$Res> {
  __$$InputStudentIdImplCopyWithImpl(
      _$InputStudentIdImpl _value, $Res Function(_$InputStudentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_$InputStudentIdImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputStudentIdImpl implements InputStudentId {
  const _$InputStudentIdImpl({required this.studentId});

  @override
  final String studentId;

  @override
  String toString() {
    return 'SignInEvent.inputStudentId(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputStudentIdImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputStudentIdImplCopyWith<_$InputStudentIdImpl> get copyWith =>
      __$$InputStudentIdImplCopyWithImpl<_$InputStudentIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return inputStudentId(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return inputStudentId?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (inputStudentId != null) {
      return inputStudentId(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return inputStudentId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return inputStudentId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (inputStudentId != null) {
      return inputStudentId(this);
    }
    return orElse();
  }
}

abstract class InputStudentId implements SignInEvent {
  const factory InputStudentId({required final String studentId}) =
      _$InputStudentIdImpl;

  String get studentId;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputStudentIdImplCopyWith<_$InputStudentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputPasswordImplCopyWith<$Res> {
  factory _$$InputPasswordImplCopyWith(
          _$InputPasswordImpl value, $Res Function(_$InputPasswordImpl) then) =
      __$$InputPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$InputPasswordImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$InputPasswordImpl>
    implements _$$InputPasswordImplCopyWith<$Res> {
  __$$InputPasswordImplCopyWithImpl(
      _$InputPasswordImpl _value, $Res Function(_$InputPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$InputPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputPasswordImpl implements InputPassword {
  const _$InputPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.inputPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPasswordImplCopyWith<_$InputPasswordImpl> get copyWith =>
      __$$InputPasswordImplCopyWithImpl<_$InputPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return inputPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return inputPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return inputPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return inputPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(this);
    }
    return orElse();
  }
}

abstract class InputPassword implements SignInEvent {
  const factory InputPassword({required final String password}) =
      _$InputPasswordImpl;

  String get password;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPasswordImplCopyWith<_$InputPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSignInImplCopyWith<$Res> {
  factory _$$SubmitSignInImplCopyWith(
          _$SubmitSignInImpl value, $Res Function(_$SubmitSignInImpl) then) =
      __$$SubmitSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SubmitSignInImpl>
    implements _$$SubmitSignInImplCopyWith<$Res> {
  __$$SubmitSignInImplCopyWithImpl(
      _$SubmitSignInImpl _value, $Res Function(_$SubmitSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitSignInImpl implements SubmitSignIn {
  const _$SubmitSignInImpl();

  @override
  String toString() {
    return 'SignInEvent.submitSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return submitSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return submitSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (submitSignIn != null) {
      return submitSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return submitSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return submitSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (submitSignIn != null) {
      return submitSignIn(this);
    }
    return orElse();
  }
}

abstract class SubmitSignIn implements SignInEvent {
  const factory SubmitSignIn() = _$SubmitSignInImpl;
}

/// @nodoc
abstract class _$$FetchUserDataImplCopyWith<$Res> {
  factory _$$FetchUserDataImplCopyWith(
          _$FetchUserDataImpl value, $Res Function(_$FetchUserDataImpl) then) =
      __$$FetchUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserDataImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$FetchUserDataImpl>
    implements _$$FetchUserDataImplCopyWith<$Res> {
  __$$FetchUserDataImplCopyWithImpl(
      _$FetchUserDataImpl _value, $Res Function(_$FetchUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchUserDataImpl implements FetchUserData {
  const _$FetchUserDataImpl();

  @override
  String toString() {
    return 'SignInEvent.fetchUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return fetchUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return fetchUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return fetchUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return fetchUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData(this);
    }
    return orElse();
  }
}

abstract class FetchUserData implements SignInEvent {
  const factory FetchUserData() = _$FetchUserDataImpl;
}

/// @nodoc
abstract class _$$SubmitSignUpImplCopyWith<$Res> {
  factory _$$SubmitSignUpImplCopyWith(
          _$SubmitSignUpImpl value, $Res Function(_$SubmitSignUpImpl) then) =
      __$$SubmitSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSignUpImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SubmitSignUpImpl>
    implements _$$SubmitSignUpImplCopyWith<$Res> {
  __$$SubmitSignUpImplCopyWithImpl(
      _$SubmitSignUpImpl _value, $Res Function(_$SubmitSignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitSignUpImpl implements SubmitSignUp {
  const _$SubmitSignUpImpl();

  @override
  String toString() {
    return 'SignInEvent.submitSignUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return submitSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return submitSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (submitSignUp != null) {
      return submitSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return submitSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return submitSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (submitSignUp != null) {
      return submitSignUp(this);
    }
    return orElse();
  }
}

abstract class SubmitSignUp implements SignInEvent {
  const factory SubmitSignUp() = _$SubmitSignUpImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchDataImpl implements FetchData {
  const _$FetchDataImpl();

  @override
  String toString() {
    return 'SignInEvent.fetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) changeSignInStatus,
    required TResult Function(String studentId) inputStudentId,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitSignIn,
    required TResult Function() fetchUserData,
    required TResult Function() submitSignUp,
    required TResult Function() fetchData,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? changeSignInStatus,
    TResult? Function(String studentId)? inputStudentId,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitSignIn,
    TResult? Function()? fetchUserData,
    TResult? Function()? submitSignUp,
    TResult? Function()? fetchData,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? changeSignInStatus,
    TResult Function(String studentId)? inputStudentId,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitSignIn,
    TResult Function()? fetchUserData,
    TResult Function()? submitSignUp,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSignInStatus value) changeSignInStatus,
    required TResult Function(InputStudentId value) inputStudentId,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitSignIn value) submitSignIn,
    required TResult Function(FetchUserData value) fetchUserData,
    required TResult Function(SubmitSignUp value) submitSignUp,
    required TResult Function(FetchData value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult? Function(InputStudentId value)? inputStudentId,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitSignIn value)? submitSignIn,
    TResult? Function(FetchUserData value)? fetchUserData,
    TResult? Function(SubmitSignUp value)? submitSignUp,
    TResult? Function(FetchData value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSignInStatus value)? changeSignInStatus,
    TResult Function(InputStudentId value)? inputStudentId,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitSignIn value)? submitSignIn,
    TResult Function(FetchUserData value)? fetchUserData,
    TResult Function(SubmitSignUp value)? submitSignUp,
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchData implements SignInEvent {
  const factory FetchData() = _$FetchDataImpl;
}
