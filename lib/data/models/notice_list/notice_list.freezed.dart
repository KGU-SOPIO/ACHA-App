// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeListModel _$NoticeListModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return NoticeList.fromJson(json);
    case 'error':
      return NoticeListError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NoticeListModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NoticeListModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Notice> noticeList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Notice> noticeList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Notice> noticeList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoticeList value) $default, {
    required TResult Function(NoticeListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoticeList value)? $default, {
    TResult? Function(NoticeListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoticeList value)? $default, {
    TResult Function(NoticeListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NoticeListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListModelCopyWith<$Res> {
  factory $NoticeListModelCopyWith(
          NoticeListModel value, $Res Function(NoticeListModel) then) =
      _$NoticeListModelCopyWithImpl<$Res, NoticeListModel>;
}

/// @nodoc
class _$NoticeListModelCopyWithImpl<$Res, $Val extends NoticeListModel>
    implements $NoticeListModelCopyWith<$Res> {
  _$NoticeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoticeListImplCopyWith<$Res> {
  factory _$$NoticeListImplCopyWith(
          _$NoticeListImpl value, $Res Function(_$NoticeListImpl) then) =
      __$$NoticeListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Notice> noticeList});
}

/// @nodoc
class __$$NoticeListImplCopyWithImpl<$Res>
    extends _$NoticeListModelCopyWithImpl<$Res, _$NoticeListImpl>
    implements _$$NoticeListImplCopyWith<$Res> {
  __$$NoticeListImplCopyWithImpl(
      _$NoticeListImpl _value, $Res Function(_$NoticeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeList = null,
  }) {
    return _then(_$NoticeListImpl(
      noticeList: null == noticeList
          ? _value._noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeListImpl implements NoticeList {
  const _$NoticeListImpl(
      {required final List<Notice> noticeList, final String? $type})
      : _noticeList = noticeList,
        $type = $type ?? 'default';

  factory _$NoticeListImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeListImplFromJson(json);

  final List<Notice> _noticeList;
  @override
  List<Notice> get noticeList {
    if (_noticeList is EqualUnmodifiableListView) return _noticeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noticeList);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NoticeListModel(noticeList: $noticeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeListImpl &&
            const DeepCollectionEquality()
                .equals(other._noticeList, _noticeList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_noticeList));

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeListImplCopyWith<_$NoticeListImpl> get copyWith =>
      __$$NoticeListImplCopyWithImpl<_$NoticeListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Notice> noticeList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(noticeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Notice> noticeList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(noticeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Notice> noticeList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(noticeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoticeList value) $default, {
    required TResult Function(NoticeListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoticeList value)? $default, {
    TResult? Function(NoticeListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoticeList value)? $default, {
    TResult Function(NoticeListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeListImplToJson(
      this,
    );
  }
}

abstract class NoticeList implements NoticeListModel {
  const factory NoticeList({required final List<Notice> noticeList}) =
      _$NoticeListImpl;

  factory NoticeList.fromJson(Map<String, dynamic> json) =
      _$NoticeListImpl.fromJson;

  List<Notice> get noticeList;

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeListImplCopyWith<_$NoticeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoticeListErrorImplCopyWith<$Res> {
  factory _$$NoticeListErrorImplCopyWith(_$NoticeListErrorImpl value,
          $Res Function(_$NoticeListErrorImpl) then) =
      __$$NoticeListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$NoticeListErrorImplCopyWithImpl<$Res>
    extends _$NoticeListModelCopyWithImpl<$Res, _$NoticeListErrorImpl>
    implements _$$NoticeListErrorImplCopyWith<$Res> {
  __$$NoticeListErrorImplCopyWithImpl(
      _$NoticeListErrorImpl _value, $Res Function(_$NoticeListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$NoticeListErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeListErrorImpl implements NoticeListError {
  const _$NoticeListErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$NoticeListErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeListErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NoticeListModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeListErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeListErrorImplCopyWith<_$NoticeListErrorImpl> get copyWith =>
      __$$NoticeListErrorImplCopyWithImpl<_$NoticeListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Notice> noticeList) $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Notice> noticeList)? $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Notice> noticeList)? $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoticeList value) $default, {
    required TResult Function(NoticeListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoticeList value)? $default, {
    TResult? Function(NoticeListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoticeList value)? $default, {
    TResult Function(NoticeListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeListErrorImplToJson(
      this,
    );
  }
}

abstract class NoticeListError implements NoticeListModel {
  const factory NoticeListError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$NoticeListErrorImpl;

  factory NoticeListError.fromJson(Map<String, dynamic> json) =
      _$NoticeListErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeListErrorImplCopyWith<_$NoticeListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
