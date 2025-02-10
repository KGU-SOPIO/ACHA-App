// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNoticeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNoticeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNoticeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoticeList value) fetchNoticeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNoticeList value)? fetchNoticeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoticeList value)? fetchNoticeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListEventCopyWith<$Res> {
  factory $NoticeListEventCopyWith(
          NoticeListEvent value, $Res Function(NoticeListEvent) then) =
      _$NoticeListEventCopyWithImpl<$Res, NoticeListEvent>;
}

/// @nodoc
class _$NoticeListEventCopyWithImpl<$Res, $Val extends NoticeListEvent>
    implements $NoticeListEventCopyWith<$Res> {
  _$NoticeListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchNoticeListImplCopyWith<$Res> {
  factory _$$FetchNoticeListImplCopyWith(_$FetchNoticeListImpl value,
          $Res Function(_$FetchNoticeListImpl) then) =
      __$$FetchNoticeListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNoticeListImplCopyWithImpl<$Res>
    extends _$NoticeListEventCopyWithImpl<$Res, _$FetchNoticeListImpl>
    implements _$$FetchNoticeListImplCopyWith<$Res> {
  __$$FetchNoticeListImplCopyWithImpl(
      _$FetchNoticeListImpl _value, $Res Function(_$FetchNoticeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchNoticeListImpl implements FetchNoticeList {
  const _$FetchNoticeListImpl();

  @override
  String toString() {
    return 'NoticeListEvent.fetchNoticeList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchNoticeListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNoticeList,
  }) {
    return fetchNoticeList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNoticeList,
  }) {
    return fetchNoticeList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNoticeList,
    required TResult orElse(),
  }) {
    if (fetchNoticeList != null) {
      return fetchNoticeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoticeList value) fetchNoticeList,
  }) {
    return fetchNoticeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNoticeList value)? fetchNoticeList,
  }) {
    return fetchNoticeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoticeList value)? fetchNoticeList,
    required TResult orElse(),
  }) {
    if (fetchNoticeList != null) {
      return fetchNoticeList(this);
    }
    return orElse();
  }
}

abstract class FetchNoticeList implements NoticeListEvent {
  const factory FetchNoticeList() = _$FetchNoticeListImpl;
}
