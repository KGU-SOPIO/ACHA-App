// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) changeStatus,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? changeStatus,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? changeStatus,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeStatus value) changeStatus,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeStatus value)? changeStatus,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeStatus value)? changeStatus,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeStatusImplCopyWith<$Res> {
  factory _$$ChangeStatusImplCopyWith(
          _$ChangeStatusImpl value, $Res Function(_$ChangeStatusImpl) then) =
      __$$ChangeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$ChangeStatusImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ChangeStatusImpl>
    implements _$$ChangeStatusImplCopyWith<$Res> {
  __$$ChangeStatusImplCopyWithImpl(
      _$ChangeStatusImpl _value, $Res Function(_$ChangeStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$ChangeStatusImpl implements ChangeStatus {
  const _$ChangeStatusImpl({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationEvent.changeStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      __$$ChangeStatusImplCopyWithImpl<_$ChangeStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) changeStatus,
    required TResult Function() logout,
  }) {
    return changeStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? changeStatus,
    TResult? Function()? logout,
  }) {
    return changeStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? changeStatus,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeStatus value) changeStatus,
    required TResult Function(Logout value) logout,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeStatus value)? changeStatus,
    TResult? Function(Logout value)? logout,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeStatus value)? changeStatus,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeStatus implements AuthenticationEvent {
  const factory ChangeStatus({required final AuthenticationStatus status}) =
      _$ChangeStatusImpl;

  AuthenticationStatus get status;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) changeStatus,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? changeStatus,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? changeStatus,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeStatus value) changeStatus,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeStatus value)? changeStatus,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeStatus value)? changeStatus,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthenticationEvent {
  const factory Logout() = _$LogoutImpl;
}
