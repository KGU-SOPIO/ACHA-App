// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdraw_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WithdrawEvent {
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) withdraw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? withdraw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? withdraw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Withdraw value) withdraw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Withdraw value)? withdraw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Withdraw value)? withdraw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WithdrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawEventCopyWith<WithdrawEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawEventCopyWith<$Res> {
  factory $WithdrawEventCopyWith(
          WithdrawEvent value, $Res Function(WithdrawEvent) then) =
      _$WithdrawEventCopyWithImpl<$Res, WithdrawEvent>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$WithdrawEventCopyWithImpl<$Res, $Val extends WithdrawEvent>
    implements $WithdrawEventCopyWith<$Res> {
  _$WithdrawEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawEvent
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
abstract class _$$WithdrawImplCopyWith<$Res>
    implements $WithdrawEventCopyWith<$Res> {
  factory _$$WithdrawImplCopyWith(
          _$WithdrawImpl value, $Res Function(_$WithdrawImpl) then) =
      __$$WithdrawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$WithdrawImplCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res, _$WithdrawImpl>
    implements _$$WithdrawImplCopyWith<$Res> {
  __$$WithdrawImplCopyWithImpl(
      _$WithdrawImpl _value, $Res Function(_$WithdrawImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$WithdrawImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WithdrawImpl implements Withdraw {
  const _$WithdrawImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'WithdrawEvent.withdraw(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of WithdrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawImplCopyWith<_$WithdrawImpl> get copyWith =>
      __$$WithdrawImplCopyWithImpl<_$WithdrawImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) withdraw,
  }) {
    return withdraw(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? withdraw,
  }) {
    return withdraw?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? withdraw,
    required TResult orElse(),
  }) {
    if (withdraw != null) {
      return withdraw(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Withdraw value) withdraw,
  }) {
    return withdraw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Withdraw value)? withdraw,
  }) {
    return withdraw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Withdraw value)? withdraw,
    required TResult orElse(),
  }) {
    if (withdraw != null) {
      return withdraw(this);
    }
    return orElse();
  }
}

abstract class Withdraw implements WithdrawEvent {
  const factory Withdraw({required final String password}) = _$WithdrawImpl;

  @override
  String get password;

  /// Create a copy of WithdrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawImplCopyWith<_$WithdrawImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
