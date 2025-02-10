// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNotice value) fetchNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNotice value)? fetchNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNotice value)? fetchNotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeEventCopyWith<$Res> {
  factory $NoticeEventCopyWith(
          NoticeEvent value, $Res Function(NoticeEvent) then) =
      _$NoticeEventCopyWithImpl<$Res, NoticeEvent>;
}

/// @nodoc
class _$NoticeEventCopyWithImpl<$Res, $Val extends NoticeEvent>
    implements $NoticeEventCopyWith<$Res> {
  _$NoticeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchNoticeImplCopyWith<$Res> {
  factory _$$FetchNoticeImplCopyWith(
          _$FetchNoticeImpl value, $Res Function(_$FetchNoticeImpl) then) =
      __$$FetchNoticeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNoticeImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$FetchNoticeImpl>
    implements _$$FetchNoticeImplCopyWith<$Res> {
  __$$FetchNoticeImplCopyWithImpl(
      _$FetchNoticeImpl _value, $Res Function(_$FetchNoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchNoticeImpl implements FetchNotice {
  const _$FetchNoticeImpl();

  @override
  String toString() {
    return 'NoticeEvent.fetchNotice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchNoticeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotice,
  }) {
    return fetchNotice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotice,
  }) {
    return fetchNotice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotice,
    required TResult orElse(),
  }) {
    if (fetchNotice != null) {
      return fetchNotice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNotice value) fetchNotice,
  }) {
    return fetchNotice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNotice value)? fetchNotice,
  }) {
    return fetchNotice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNotice value)? fetchNotice,
    required TResult orElse(),
  }) {
    if (fetchNotice != null) {
      return fetchNotice(this);
    }
    return orElse();
  }
}

abstract class FetchNotice implements NoticeEvent {
  const factory FetchNotice() = _$FetchNoticeImpl;
}
