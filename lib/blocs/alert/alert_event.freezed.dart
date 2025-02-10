// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlertEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAlertStatus,
    required TResult Function() denyAlert,
    required TResult Function(bool isEnabled) changeAlertStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAlertStatus,
    TResult? Function()? denyAlert,
    TResult? Function(bool isEnabled)? changeAlertStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAlertStatus,
    TResult Function()? denyAlert,
    TResult Function(bool isEnabled)? changeAlertStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAlertStatus value) fetchAlertStatus,
    required TResult Function(DenyAlert value) denyAlert,
    required TResult Function(ChangeAlertStatus value) changeAlertStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult? Function(DenyAlert value)? denyAlert,
    TResult? Function(ChangeAlertStatus value)? changeAlertStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult Function(DenyAlert value)? denyAlert,
    TResult Function(ChangeAlertStatus value)? changeAlertStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertEventCopyWith<$Res> {
  factory $AlertEventCopyWith(
          AlertEvent value, $Res Function(AlertEvent) then) =
      _$AlertEventCopyWithImpl<$Res, AlertEvent>;
}

/// @nodoc
class _$AlertEventCopyWithImpl<$Res, $Val extends AlertEvent>
    implements $AlertEventCopyWith<$Res> {
  _$AlertEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAlertStatusImplCopyWith<$Res> {
  factory _$$FetchAlertStatusImplCopyWith(_$FetchAlertStatusImpl value,
          $Res Function(_$FetchAlertStatusImpl) then) =
      __$$FetchAlertStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAlertStatusImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$FetchAlertStatusImpl>
    implements _$$FetchAlertStatusImplCopyWith<$Res> {
  __$$FetchAlertStatusImplCopyWithImpl(_$FetchAlertStatusImpl _value,
      $Res Function(_$FetchAlertStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAlertStatusImpl implements FetchAlertStatus {
  const _$FetchAlertStatusImpl();

  @override
  String toString() {
    return 'AlertEvent.fetchAlertStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAlertStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAlertStatus,
    required TResult Function() denyAlert,
    required TResult Function(bool isEnabled) changeAlertStatus,
  }) {
    return fetchAlertStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAlertStatus,
    TResult? Function()? denyAlert,
    TResult? Function(bool isEnabled)? changeAlertStatus,
  }) {
    return fetchAlertStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAlertStatus,
    TResult Function()? denyAlert,
    TResult Function(bool isEnabled)? changeAlertStatus,
    required TResult orElse(),
  }) {
    if (fetchAlertStatus != null) {
      return fetchAlertStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAlertStatus value) fetchAlertStatus,
    required TResult Function(DenyAlert value) denyAlert,
    required TResult Function(ChangeAlertStatus value) changeAlertStatus,
  }) {
    return fetchAlertStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult? Function(DenyAlert value)? denyAlert,
    TResult? Function(ChangeAlertStatus value)? changeAlertStatus,
  }) {
    return fetchAlertStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult Function(DenyAlert value)? denyAlert,
    TResult Function(ChangeAlertStatus value)? changeAlertStatus,
    required TResult orElse(),
  }) {
    if (fetchAlertStatus != null) {
      return fetchAlertStatus(this);
    }
    return orElse();
  }
}

abstract class FetchAlertStatus implements AlertEvent {
  const factory FetchAlertStatus() = _$FetchAlertStatusImpl;
}

/// @nodoc
abstract class _$$DenyAlertImplCopyWith<$Res> {
  factory _$$DenyAlertImplCopyWith(
          _$DenyAlertImpl value, $Res Function(_$DenyAlertImpl) then) =
      __$$DenyAlertImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DenyAlertImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$DenyAlertImpl>
    implements _$$DenyAlertImplCopyWith<$Res> {
  __$$DenyAlertImplCopyWithImpl(
      _$DenyAlertImpl _value, $Res Function(_$DenyAlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DenyAlertImpl implements DenyAlert {
  const _$DenyAlertImpl();

  @override
  String toString() {
    return 'AlertEvent.denyAlert()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DenyAlertImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAlertStatus,
    required TResult Function() denyAlert,
    required TResult Function(bool isEnabled) changeAlertStatus,
  }) {
    return denyAlert();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAlertStatus,
    TResult? Function()? denyAlert,
    TResult? Function(bool isEnabled)? changeAlertStatus,
  }) {
    return denyAlert?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAlertStatus,
    TResult Function()? denyAlert,
    TResult Function(bool isEnabled)? changeAlertStatus,
    required TResult orElse(),
  }) {
    if (denyAlert != null) {
      return denyAlert();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAlertStatus value) fetchAlertStatus,
    required TResult Function(DenyAlert value) denyAlert,
    required TResult Function(ChangeAlertStatus value) changeAlertStatus,
  }) {
    return denyAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult? Function(DenyAlert value)? denyAlert,
    TResult? Function(ChangeAlertStatus value)? changeAlertStatus,
  }) {
    return denyAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult Function(DenyAlert value)? denyAlert,
    TResult Function(ChangeAlertStatus value)? changeAlertStatus,
    required TResult orElse(),
  }) {
    if (denyAlert != null) {
      return denyAlert(this);
    }
    return orElse();
  }
}

abstract class DenyAlert implements AlertEvent {
  const factory DenyAlert() = _$DenyAlertImpl;
}

/// @nodoc
abstract class _$$ChangeAlertStatusImplCopyWith<$Res> {
  factory _$$ChangeAlertStatusImplCopyWith(_$ChangeAlertStatusImpl value,
          $Res Function(_$ChangeAlertStatusImpl) then) =
      __$$ChangeAlertStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$ChangeAlertStatusImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$ChangeAlertStatusImpl>
    implements _$$ChangeAlertStatusImplCopyWith<$Res> {
  __$$ChangeAlertStatusImplCopyWithImpl(_$ChangeAlertStatusImpl _value,
      $Res Function(_$ChangeAlertStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$ChangeAlertStatusImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeAlertStatusImpl implements ChangeAlertStatus {
  const _$ChangeAlertStatusImpl({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'AlertEvent.changeAlertStatus(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAlertStatusImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAlertStatusImplCopyWith<_$ChangeAlertStatusImpl> get copyWith =>
      __$$ChangeAlertStatusImplCopyWithImpl<_$ChangeAlertStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAlertStatus,
    required TResult Function() denyAlert,
    required TResult Function(bool isEnabled) changeAlertStatus,
  }) {
    return changeAlertStatus(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAlertStatus,
    TResult? Function()? denyAlert,
    TResult? Function(bool isEnabled)? changeAlertStatus,
  }) {
    return changeAlertStatus?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAlertStatus,
    TResult Function()? denyAlert,
    TResult Function(bool isEnabled)? changeAlertStatus,
    required TResult orElse(),
  }) {
    if (changeAlertStatus != null) {
      return changeAlertStatus(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAlertStatus value) fetchAlertStatus,
    required TResult Function(DenyAlert value) denyAlert,
    required TResult Function(ChangeAlertStatus value) changeAlertStatus,
  }) {
    return changeAlertStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult? Function(DenyAlert value)? denyAlert,
    TResult? Function(ChangeAlertStatus value)? changeAlertStatus,
  }) {
    return changeAlertStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAlertStatus value)? fetchAlertStatus,
    TResult Function(DenyAlert value)? denyAlert,
    TResult Function(ChangeAlertStatus value)? changeAlertStatus,
    required TResult orElse(),
  }) {
    if (changeAlertStatus != null) {
      return changeAlertStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeAlertStatus implements AlertEvent {
  const factory ChangeAlertStatus({required final bool isEnabled}) =
      _$ChangeAlertStatusImpl;

  bool get isEnabled;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAlertStatusImplCopyWith<_$ChangeAlertStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
