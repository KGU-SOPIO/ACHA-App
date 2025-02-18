// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignOutEvent {
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) submitSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? submitSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? submitSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitSignOut value) submitSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitSignOut value)? submitSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitSignOut value)? submitSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignOutEventCopyWith<SignOutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutEventCopyWith<$Res> {
  factory $SignOutEventCopyWith(
          SignOutEvent value, $Res Function(SignOutEvent) then) =
      _$SignOutEventCopyWithImpl<$Res, SignOutEvent>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$SignOutEventCopyWithImpl<$Res, $Val extends SignOutEvent>
    implements $SignOutEventCopyWith<$Res> {
  _$SignOutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitSignOutImplCopyWith<$Res>
    implements $SignOutEventCopyWith<$Res> {
  factory _$$SubmitSignOutImplCopyWith(
          _$SubmitSignOutImpl value, $Res Function(_$SubmitSignOutImpl) then) =
      __$$SubmitSignOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$SubmitSignOutImplCopyWithImpl<$Res>
    extends _$SignOutEventCopyWithImpl<$Res, _$SubmitSignOutImpl>
    implements _$$SubmitSignOutImplCopyWith<$Res> {
  __$$SubmitSignOutImplCopyWithImpl(
      _$SubmitSignOutImpl _value, $Res Function(_$SubmitSignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$SubmitSignOutImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitSignOutImpl implements SubmitSignOut {
  const _$SubmitSignOutImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignOutEvent.submitSignOut(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSignOutImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SignOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSignOutImplCopyWith<_$SubmitSignOutImpl> get copyWith =>
      __$$SubmitSignOutImplCopyWithImpl<_$SubmitSignOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) submitSignOut,
  }) {
    return submitSignOut(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? submitSignOut,
  }) {
    return submitSignOut?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? submitSignOut,
    required TResult orElse(),
  }) {
    if (submitSignOut != null) {
      return submitSignOut(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitSignOut value) submitSignOut,
  }) {
    return submitSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitSignOut value)? submitSignOut,
  }) {
    return submitSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitSignOut value)? submitSignOut,
    required TResult orElse(),
  }) {
    if (submitSignOut != null) {
      return submitSignOut(this);
    }
    return orElse();
  }
}

abstract class SubmitSignOut implements SignOutEvent {
  const factory SubmitSignOut({required final String password}) =
      _$SubmitSignOutImpl;

  @override
  String get password;

  /// Create a copy of SignOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSignOutImplCopyWith<_$SubmitSignOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
