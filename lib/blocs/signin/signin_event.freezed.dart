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
    required TResult Function(SignInStatus status) statusChanged,
    required TResult Function(String studentId) studentIdEntered,
    required TResult Function(String password) passwordEntered,
    required TResult Function() signInSubmitted,
    required TResult Function() signUpSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? statusChanged,
    TResult? Function(String studentId)? studentIdEntered,
    TResult? Function(String password)? passwordEntered,
    TResult? Function()? signInSubmitted,
    TResult? Function()? signUpSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? statusChanged,
    TResult Function(String studentId)? studentIdEntered,
    TResult Function(String password)? passwordEntered,
    TResult Function()? signInSubmitted,
    TResult Function()? signUpSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(StudentIdEntered value) studentIdEntered,
    required TResult Function(PasswordEntered value) passwordEntered,
    required TResult Function(SignInSubmitted value) signInSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusChanged value)? statusChanged,
    TResult? Function(StudentIdEntered value)? studentIdEntered,
    TResult? Function(PasswordEntered value)? passwordEntered,
    TResult? Function(SignInSubmitted value)? signInSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(StudentIdEntered value)? studentIdEntered,
    TResult Function(PasswordEntered value)? passwordEntered,
    TResult Function(SignInSubmitted value)? signInSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
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
abstract class _$$StatusChangedImplCopyWith<$Res> {
  factory _$$StatusChangedImplCopyWith(
          _$StatusChangedImpl value, $Res Function(_$StatusChangedImpl) then) =
      __$$StatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInStatus status});
}

/// @nodoc
class __$$StatusChangedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$StatusChangedImpl>
    implements _$$StatusChangedImplCopyWith<$Res> {
  __$$StatusChangedImplCopyWithImpl(
      _$StatusChangedImpl _value, $Res Function(_$StatusChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StatusChangedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignInStatus,
    ));
  }
}

/// @nodoc

class _$StatusChangedImpl implements StatusChanged {
  const _$StatusChangedImpl({required this.status});

  @override
  final SignInStatus status;

  @override
  String toString() {
    return 'SignInEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusChangedImplCopyWith<_$StatusChangedImpl> get copyWith =>
      __$$StatusChangedImplCopyWithImpl<_$StatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) statusChanged,
    required TResult Function(String studentId) studentIdEntered,
    required TResult Function(String password) passwordEntered,
    required TResult Function() signInSubmitted,
    required TResult Function() signUpSubmitted,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? statusChanged,
    TResult? Function(String studentId)? studentIdEntered,
    TResult? Function(String password)? passwordEntered,
    TResult? Function()? signInSubmitted,
    TResult? Function()? signUpSubmitted,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? statusChanged,
    TResult Function(String studentId)? studentIdEntered,
    TResult Function(String password)? passwordEntered,
    TResult Function()? signInSubmitted,
    TResult Function()? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(StudentIdEntered value) studentIdEntered,
    required TResult Function(PasswordEntered value) passwordEntered,
    required TResult Function(SignInSubmitted value) signInSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusChanged value)? statusChanged,
    TResult? Function(StudentIdEntered value)? studentIdEntered,
    TResult? Function(PasswordEntered value)? passwordEntered,
    TResult? Function(SignInSubmitted value)? signInSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(StudentIdEntered value)? studentIdEntered,
    TResult Function(PasswordEntered value)? passwordEntered,
    TResult Function(SignInSubmitted value)? signInSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class StatusChanged implements SignInEvent {
  const factory StatusChanged({required final SignInStatus status}) =
      _$StatusChangedImpl;

  SignInStatus get status;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusChangedImplCopyWith<_$StatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudentIdEnteredImplCopyWith<$Res> {
  factory _$$StudentIdEnteredImplCopyWith(_$StudentIdEnteredImpl value,
          $Res Function(_$StudentIdEnteredImpl) then) =
      __$$StudentIdEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId});
}

/// @nodoc
class __$$StudentIdEnteredImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$StudentIdEnteredImpl>
    implements _$$StudentIdEnteredImplCopyWith<$Res> {
  __$$StudentIdEnteredImplCopyWithImpl(_$StudentIdEnteredImpl _value,
      $Res Function(_$StudentIdEnteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_$StudentIdEnteredImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentIdEnteredImpl implements StudentIdEntered {
  const _$StudentIdEnteredImpl({required this.studentId});

  @override
  final String studentId;

  @override
  String toString() {
    return 'SignInEvent.studentIdEntered(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentIdEnteredImpl &&
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
  _$$StudentIdEnteredImplCopyWith<_$StudentIdEnteredImpl> get copyWith =>
      __$$StudentIdEnteredImplCopyWithImpl<_$StudentIdEnteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) statusChanged,
    required TResult Function(String studentId) studentIdEntered,
    required TResult Function(String password) passwordEntered,
    required TResult Function() signInSubmitted,
    required TResult Function() signUpSubmitted,
  }) {
    return studentIdEntered(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? statusChanged,
    TResult? Function(String studentId)? studentIdEntered,
    TResult? Function(String password)? passwordEntered,
    TResult? Function()? signInSubmitted,
    TResult? Function()? signUpSubmitted,
  }) {
    return studentIdEntered?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? statusChanged,
    TResult Function(String studentId)? studentIdEntered,
    TResult Function(String password)? passwordEntered,
    TResult Function()? signInSubmitted,
    TResult Function()? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (studentIdEntered != null) {
      return studentIdEntered(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(StudentIdEntered value) studentIdEntered,
    required TResult Function(PasswordEntered value) passwordEntered,
    required TResult Function(SignInSubmitted value) signInSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
  }) {
    return studentIdEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusChanged value)? statusChanged,
    TResult? Function(StudentIdEntered value)? studentIdEntered,
    TResult? Function(PasswordEntered value)? passwordEntered,
    TResult? Function(SignInSubmitted value)? signInSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
  }) {
    return studentIdEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(StudentIdEntered value)? studentIdEntered,
    TResult Function(PasswordEntered value)? passwordEntered,
    TResult Function(SignInSubmitted value)? signInSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (studentIdEntered != null) {
      return studentIdEntered(this);
    }
    return orElse();
  }
}

abstract class StudentIdEntered implements SignInEvent {
  const factory StudentIdEntered({required final String studentId}) =
      _$StudentIdEnteredImpl;

  String get studentId;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentIdEnteredImplCopyWith<_$StudentIdEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordEnteredImplCopyWith<$Res> {
  factory _$$PasswordEnteredImplCopyWith(_$PasswordEnteredImpl value,
          $Res Function(_$PasswordEnteredImpl) then) =
      __$$PasswordEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordEnteredImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PasswordEnteredImpl>
    implements _$$PasswordEnteredImplCopyWith<$Res> {
  __$$PasswordEnteredImplCopyWithImpl(
      _$PasswordEnteredImpl _value, $Res Function(_$PasswordEnteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordEnteredImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordEnteredImpl implements PasswordEntered {
  const _$PasswordEnteredImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.passwordEntered(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordEnteredImpl &&
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
  _$$PasswordEnteredImplCopyWith<_$PasswordEnteredImpl> get copyWith =>
      __$$PasswordEnteredImplCopyWithImpl<_$PasswordEnteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) statusChanged,
    required TResult Function(String studentId) studentIdEntered,
    required TResult Function(String password) passwordEntered,
    required TResult Function() signInSubmitted,
    required TResult Function() signUpSubmitted,
  }) {
    return passwordEntered(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? statusChanged,
    TResult? Function(String studentId)? studentIdEntered,
    TResult? Function(String password)? passwordEntered,
    TResult? Function()? signInSubmitted,
    TResult? Function()? signUpSubmitted,
  }) {
    return passwordEntered?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? statusChanged,
    TResult Function(String studentId)? studentIdEntered,
    TResult Function(String password)? passwordEntered,
    TResult Function()? signInSubmitted,
    TResult Function()? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (passwordEntered != null) {
      return passwordEntered(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(StudentIdEntered value) studentIdEntered,
    required TResult Function(PasswordEntered value) passwordEntered,
    required TResult Function(SignInSubmitted value) signInSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
  }) {
    return passwordEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusChanged value)? statusChanged,
    TResult? Function(StudentIdEntered value)? studentIdEntered,
    TResult? Function(PasswordEntered value)? passwordEntered,
    TResult? Function(SignInSubmitted value)? signInSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
  }) {
    return passwordEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(StudentIdEntered value)? studentIdEntered,
    TResult Function(PasswordEntered value)? passwordEntered,
    TResult Function(SignInSubmitted value)? signInSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (passwordEntered != null) {
      return passwordEntered(this);
    }
    return orElse();
  }
}

abstract class PasswordEntered implements SignInEvent {
  const factory PasswordEntered({required final String password}) =
      _$PasswordEnteredImpl;

  String get password;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordEnteredImplCopyWith<_$PasswordEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInSubmittedImplCopyWith<$Res> {
  factory _$$SignInSubmittedImplCopyWith(_$SignInSubmittedImpl value,
          $Res Function(_$SignInSubmittedImpl) then) =
      __$$SignInSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInSubmittedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInSubmittedImpl>
    implements _$$SignInSubmittedImplCopyWith<$Res> {
  __$$SignInSubmittedImplCopyWithImpl(
      _$SignInSubmittedImpl _value, $Res Function(_$SignInSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInSubmittedImpl implements SignInSubmitted {
  const _$SignInSubmittedImpl();

  @override
  String toString() {
    return 'SignInEvent.signInSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) statusChanged,
    required TResult Function(String studentId) studentIdEntered,
    required TResult Function(String password) passwordEntered,
    required TResult Function() signInSubmitted,
    required TResult Function() signUpSubmitted,
  }) {
    return signInSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? statusChanged,
    TResult? Function(String studentId)? studentIdEntered,
    TResult? Function(String password)? passwordEntered,
    TResult? Function()? signInSubmitted,
    TResult? Function()? signUpSubmitted,
  }) {
    return signInSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? statusChanged,
    TResult Function(String studentId)? studentIdEntered,
    TResult Function(String password)? passwordEntered,
    TResult Function()? signInSubmitted,
    TResult Function()? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (signInSubmitted != null) {
      return signInSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(StudentIdEntered value) studentIdEntered,
    required TResult Function(PasswordEntered value) passwordEntered,
    required TResult Function(SignInSubmitted value) signInSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
  }) {
    return signInSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusChanged value)? statusChanged,
    TResult? Function(StudentIdEntered value)? studentIdEntered,
    TResult? Function(PasswordEntered value)? passwordEntered,
    TResult? Function(SignInSubmitted value)? signInSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
  }) {
    return signInSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(StudentIdEntered value)? studentIdEntered,
    TResult Function(PasswordEntered value)? passwordEntered,
    TResult Function(SignInSubmitted value)? signInSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (signInSubmitted != null) {
      return signInSubmitted(this);
    }
    return orElse();
  }
}

abstract class SignInSubmitted implements SignInEvent {
  const factory SignInSubmitted() = _$SignInSubmittedImpl;
}

/// @nodoc
abstract class _$$SignUpSubmittedImplCopyWith<$Res> {
  factory _$$SignUpSubmittedImplCopyWith(_$SignUpSubmittedImpl value,
          $Res Function(_$SignUpSubmittedImpl) then) =
      __$$SignUpSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpSubmittedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignUpSubmittedImpl>
    implements _$$SignUpSubmittedImplCopyWith<$Res> {
  __$$SignUpSubmittedImplCopyWithImpl(
      _$SignUpSubmittedImpl _value, $Res Function(_$SignUpSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpSubmittedImpl implements SignUpSubmitted {
  const _$SignUpSubmittedImpl();

  @override
  String toString() {
    return 'SignInEvent.signUpSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInStatus status) statusChanged,
    required TResult Function(String studentId) studentIdEntered,
    required TResult Function(String password) passwordEntered,
    required TResult Function() signInSubmitted,
    required TResult Function() signUpSubmitted,
  }) {
    return signUpSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInStatus status)? statusChanged,
    TResult? Function(String studentId)? studentIdEntered,
    TResult? Function(String password)? passwordEntered,
    TResult? Function()? signInSubmitted,
    TResult? Function()? signUpSubmitted,
  }) {
    return signUpSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInStatus status)? statusChanged,
    TResult Function(String studentId)? studentIdEntered,
    TResult Function(String password)? passwordEntered,
    TResult Function()? signInSubmitted,
    TResult Function()? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (signUpSubmitted != null) {
      return signUpSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(StudentIdEntered value) studentIdEntered,
    required TResult Function(PasswordEntered value) passwordEntered,
    required TResult Function(SignInSubmitted value) signInSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
  }) {
    return signUpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusChanged value)? statusChanged,
    TResult? Function(StudentIdEntered value)? studentIdEntered,
    TResult? Function(PasswordEntered value)? passwordEntered,
    TResult? Function(SignInSubmitted value)? signInSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
  }) {
    return signUpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(StudentIdEntered value)? studentIdEntered,
    TResult Function(PasswordEntered value)? passwordEntered,
    TResult Function(SignInSubmitted value)? signInSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    required TResult orElse(),
  }) {
    if (signUpSubmitted != null) {
      return signUpSubmitted(this);
    }
    return orElse();
  }
}

abstract class SignUpSubmitted implements SignInEvent {
  const factory SignUpSubmitted() = _$SignUpSubmittedImpl;
}
