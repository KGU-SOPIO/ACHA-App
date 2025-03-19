// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return Notice.fromJson(json);
    case 'error':
      return NoticeError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NoticeModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NoticeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)
        $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)?
        $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)?
        $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Notice value) $default, {
    required TResult Function(NoticeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Notice value)? $default, {
    TResult? Function(NoticeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Notice value)? $default, {
    TResult Function(NoticeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NoticeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res, NoticeModel>;
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res, $Val extends NoticeModel>
    implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoticeImplCopyWith<$Res> {
  factory _$$NoticeImplCopyWith(
          _$NoticeImpl value, $Res Function(_$NoticeImpl) then) =
      __$$NoticeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String index,
      String title,
      String professor,
      DateTime date,
      String? link,
      String? content,
      List<File>? files,
      String? nextNoticeId,
      String? nextNoticeTitle,
      String? previousNoticeId,
      String? previousNoticeTitle});
}

/// @nodoc
class __$$NoticeImplCopyWithImpl<$Res>
    extends _$NoticeModelCopyWithImpl<$Res, _$NoticeImpl>
    implements _$$NoticeImplCopyWith<$Res> {
  __$$NoticeImplCopyWithImpl(
      _$NoticeImpl _value, $Res Function(_$NoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? title = null,
    Object? professor = null,
    Object? date = null,
    Object? link = freezed,
    Object? content = freezed,
    Object? files = freezed,
    Object? nextNoticeId = freezed,
    Object? nextNoticeTitle = freezed,
    Object? previousNoticeId = freezed,
    Object? previousNoticeTitle = freezed,
  }) {
    return _then(_$NoticeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>?,
      nextNoticeId: freezed == nextNoticeId
          ? _value.nextNoticeId
          : nextNoticeId // ignore: cast_nullable_to_non_nullable
              as String?,
      nextNoticeTitle: freezed == nextNoticeTitle
          ? _value.nextNoticeTitle
          : nextNoticeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      previousNoticeId: freezed == previousNoticeId
          ? _value.previousNoticeId
          : previousNoticeId // ignore: cast_nullable_to_non_nullable
              as String?,
      previousNoticeTitle: freezed == previousNoticeTitle
          ? _value.previousNoticeTitle
          : previousNoticeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeImpl implements Notice {
  const _$NoticeImpl(
      {required this.id,
      required this.index,
      required this.title,
      required this.professor,
      required this.date,
      this.link,
      this.content,
      final List<File>? files,
      this.nextNoticeId,
      this.nextNoticeTitle,
      this.previousNoticeId,
      this.previousNoticeTitle,
      final String? $type})
      : _files = files,
        $type = $type ?? 'default';

  factory _$NoticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeImplFromJson(json);

  @override
  final String id;
  @override
  final String index;
  @override
  final String title;
  @override
  final String professor;
  @override
  final DateTime date;
  @override
  final String? link;
  @override
  final String? content;
  final List<File>? _files;
  @override
  List<File>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? nextNoticeId;
  @override
  final String? nextNoticeTitle;
  @override
  final String? previousNoticeId;
  @override
  final String? previousNoticeTitle;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NoticeModel(id: $id, index: $index, title: $title, professor: $professor, date: $date, link: $link, content: $content, files: $files, nextNoticeId: $nextNoticeId, nextNoticeTitle: $nextNoticeTitle, previousNoticeId: $previousNoticeId, previousNoticeTitle: $previousNoticeTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.nextNoticeId, nextNoticeId) ||
                other.nextNoticeId == nextNoticeId) &&
            (identical(other.nextNoticeTitle, nextNoticeTitle) ||
                other.nextNoticeTitle == nextNoticeTitle) &&
            (identical(other.previousNoticeId, previousNoticeId) ||
                other.previousNoticeId == previousNoticeId) &&
            (identical(other.previousNoticeTitle, previousNoticeTitle) ||
                other.previousNoticeTitle == previousNoticeTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      title,
      professor,
      date,
      link,
      content,
      const DeepCollectionEquality().hash(_files),
      nextNoticeId,
      nextNoticeTitle,
      previousNoticeId,
      previousNoticeTitle);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeImplCopyWith<_$NoticeImpl> get copyWith =>
      __$$NoticeImplCopyWithImpl<_$NoticeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)
        $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return $default(id, index, title, professor, date, link, content, files,
        nextNoticeId, nextNoticeTitle, previousNoticeId, previousNoticeTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)?
        $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return $default?.call(
        id,
        index,
        title,
        professor,
        date,
        link,
        content,
        files,
        nextNoticeId,
        nextNoticeTitle,
        previousNoticeId,
        previousNoticeTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)?
        $default, {
    TResult Function(@ErrorCodeConverter() ErrorCode code)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, index, title, professor, date, link, content, files,
          nextNoticeId, nextNoticeTitle, previousNoticeId, previousNoticeTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Notice value) $default, {
    required TResult Function(NoticeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Notice value)? $default, {
    TResult? Function(NoticeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Notice value)? $default, {
    TResult Function(NoticeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeImplToJson(
      this,
    );
  }
}

abstract class Notice implements NoticeModel {
  const factory Notice(
      {required final String id,
      required final String index,
      required final String title,
      required final String professor,
      required final DateTime date,
      final String? link,
      final String? content,
      final List<File>? files,
      final String? nextNoticeId,
      final String? nextNoticeTitle,
      final String? previousNoticeId,
      final String? previousNoticeTitle}) = _$NoticeImpl;

  factory Notice.fromJson(Map<String, dynamic> json) = _$NoticeImpl.fromJson;

  String get id;
  String get index;
  String get title;
  String get professor;
  DateTime get date;
  String? get link;
  String? get content;
  List<File>? get files;
  String? get nextNoticeId;
  String? get nextNoticeTitle;
  String? get previousNoticeId;
  String? get previousNoticeTitle;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeImplCopyWith<_$NoticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoticeErrorImplCopyWith<$Res> {
  factory _$$NoticeErrorImplCopyWith(
          _$NoticeErrorImpl value, $Res Function(_$NoticeErrorImpl) then) =
      __$$NoticeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ErrorCodeConverter() ErrorCode code});
}

/// @nodoc
class __$$NoticeErrorImplCopyWithImpl<$Res>
    extends _$NoticeModelCopyWithImpl<$Res, _$NoticeErrorImpl>
    implements _$$NoticeErrorImplCopyWith<$Res> {
  __$$NoticeErrorImplCopyWithImpl(
      _$NoticeErrorImpl _value, $Res Function(_$NoticeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$NoticeErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeErrorImpl implements NoticeError {
  const _$NoticeErrorImpl(
      {@ErrorCodeConverter() required this.code, final String? $type})
      : $type = $type ?? 'error';

  factory _$NoticeErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeErrorImplFromJson(json);

  @override
  @ErrorCodeConverter()
  final ErrorCode code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NoticeModel.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeErrorImplCopyWith<_$NoticeErrorImpl> get copyWith =>
      __$$NoticeErrorImplCopyWithImpl<_$NoticeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)
        $default, {
    required TResult Function(@ErrorCodeConverter() ErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)?
        $default, {
    TResult? Function(@ErrorCodeConverter() ErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String index,
            String title,
            String professor,
            DateTime date,
            String? link,
            String? content,
            List<File>? files,
            String? nextNoticeId,
            String? nextNoticeTitle,
            String? previousNoticeId,
            String? previousNoticeTitle)?
        $default, {
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
    TResult Function(Notice value) $default, {
    required TResult Function(NoticeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Notice value)? $default, {
    TResult? Function(NoticeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Notice value)? $default, {
    TResult Function(NoticeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeErrorImplToJson(
      this,
    );
  }
}

abstract class NoticeError implements NoticeModel {
  const factory NoticeError(
          {@ErrorCodeConverter() required final ErrorCode code}) =
      _$NoticeErrorImpl;

  factory NoticeError.fromJson(Map<String, dynamic> json) =
      _$NoticeErrorImpl.fromJson;

  @ErrorCodeConverter()
  ErrorCode get code;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeErrorImplCopyWith<_$NoticeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
