// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeListState {
  NoticeListStatus get status => throw _privateConstructorUsedError;
  NoticeList? get noticeList => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of NoticeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeListStateCopyWith<NoticeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListStateCopyWith<$Res> {
  factory $NoticeListStateCopyWith(
          NoticeListState value, $Res Function(NoticeListState) then) =
      _$NoticeListStateCopyWithImpl<$Res, NoticeListState>;
  @useResult
  $Res call(
      {NoticeListStatus status, NoticeList? noticeList, String? errorMessage});

  $NoticeListCopyWith<$Res>? get noticeList;
}

/// @nodoc
class _$NoticeListStateCopyWithImpl<$Res, $Val extends NoticeListState>
    implements $NoticeListStateCopyWith<$Res> {
  _$NoticeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? noticeList = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoticeListStatus,
      noticeList: freezed == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as NoticeList?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NoticeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeListCopyWith<$Res>? get noticeList {
    if (_value.noticeList == null) {
      return null;
    }

    return $NoticeListCopyWith<$Res>(_value.noticeList!, (value) {
      return _then(_value.copyWith(noticeList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoticeListStateImplCopyWith<$Res>
    implements $NoticeListStateCopyWith<$Res> {
  factory _$$NoticeListStateImplCopyWith(_$NoticeListStateImpl value,
          $Res Function(_$NoticeListStateImpl) then) =
      __$$NoticeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NoticeListStatus status, NoticeList? noticeList, String? errorMessage});

  @override
  $NoticeListCopyWith<$Res>? get noticeList;
}

/// @nodoc
class __$$NoticeListStateImplCopyWithImpl<$Res>
    extends _$NoticeListStateCopyWithImpl<$Res, _$NoticeListStateImpl>
    implements _$$NoticeListStateImplCopyWith<$Res> {
  __$$NoticeListStateImplCopyWithImpl(
      _$NoticeListStateImpl _value, $Res Function(_$NoticeListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? noticeList = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NoticeListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoticeListStatus,
      noticeList: freezed == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as NoticeList?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoticeListStateImpl implements _NoticeListState {
  const _$NoticeListStateImpl(
      {required this.status, this.noticeList, this.errorMessage});

  @override
  final NoticeListStatus status;
  @override
  final NoticeList? noticeList;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NoticeListState(status: $status, noticeList: $noticeList, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.noticeList, noticeList) ||
                other.noticeList == noticeList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, noticeList, errorMessage);

  /// Create a copy of NoticeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeListStateImplCopyWith<_$NoticeListStateImpl> get copyWith =>
      __$$NoticeListStateImplCopyWithImpl<_$NoticeListStateImpl>(
          this, _$identity);
}

abstract class _NoticeListState implements NoticeListState {
  const factory _NoticeListState(
      {required final NoticeListStatus status,
      final NoticeList? noticeList,
      final String? errorMessage}) = _$NoticeListStateImpl;

  @override
  NoticeListStatus get status;
  @override
  NoticeList? get noticeList;
  @override
  String? get errorMessage;

  /// Create a copy of NoticeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeListStateImplCopyWith<_$NoticeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
