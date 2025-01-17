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

Notices _$NoticesFromJson(Map<String, dynamic> json) {
  return _Notices.fromJson(json);
}

/// @nodoc
mixin _$Notices {
  List<Notice>? get notices => throw _privateConstructorUsedError;

  /// Serializes this Notices to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Notices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticesCopyWith<Notices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticesCopyWith<$Res> {
  factory $NoticesCopyWith(Notices value, $Res Function(Notices) then) =
      _$NoticesCopyWithImpl<$Res, Notices>;
  @useResult
  $Res call({List<Notice>? notices});
}

/// @nodoc
class _$NoticesCopyWithImpl<$Res, $Val extends Notices>
    implements $NoticesCopyWith<$Res> {
  _$NoticesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notices = freezed,
  }) {
    return _then(_value.copyWith(
      notices: freezed == notices
          ? _value.notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticesImplCopyWith<$Res> implements $NoticesCopyWith<$Res> {
  factory _$$NoticesImplCopyWith(
          _$NoticesImpl value, $Res Function(_$NoticesImpl) then) =
      __$$NoticesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Notice>? notices});
}

/// @nodoc
class __$$NoticesImplCopyWithImpl<$Res>
    extends _$NoticesCopyWithImpl<$Res, _$NoticesImpl>
    implements _$$NoticesImplCopyWith<$Res> {
  __$$NoticesImplCopyWithImpl(
      _$NoticesImpl _value, $Res Function(_$NoticesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notices = freezed,
  }) {
    return _then(_$NoticesImpl(
      notices: freezed == notices
          ? _value._notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticesImpl implements _Notices {
  const _$NoticesImpl({final List<Notice>? notices = const []})
      : _notices = notices;

  factory _$NoticesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticesImplFromJson(json);

  final List<Notice>? _notices;
  @override
  @JsonKey()
  List<Notice>? get notices {
    final value = _notices;
    if (value == null) return null;
    if (_notices is EqualUnmodifiableListView) return _notices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Notices(notices: $notices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticesImpl &&
            const DeepCollectionEquality().equals(other._notices, _notices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notices));

  /// Create a copy of Notices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticesImplCopyWith<_$NoticesImpl> get copyWith =>
      __$$NoticesImplCopyWithImpl<_$NoticesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticesImplToJson(
      this,
    );
  }
}

abstract class _Notices implements Notices {
  const factory _Notices({final List<Notice>? notices}) = _$NoticesImpl;

  factory _Notices.fromJson(Map<String, dynamic> json) = _$NoticesImpl.fromJson;

  @override
  List<Notice>? get notices;

  /// Create a copy of Notices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticesImplCopyWith<_$NoticesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return _Notice.fromJson(json);
}

/// @nodoc
mixin _$Notice {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get index => throw _privateConstructorUsedError;
  @HiveField(2)
  String get title => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get link => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get content => throw _privateConstructorUsedError;
  @HiveField(6)
  List<File>? get files => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get nextNoticeId => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get nextNoticeTitle => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get previousNoticeId => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get previousNoticeTitle => throw _privateConstructorUsedError;

  /// Serializes this Notice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeCopyWith<Notice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) then) =
      _$NoticeCopyWithImpl<$Res, Notice>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String index,
      @HiveField(2) String title,
      @HiveField(3) DateTime date,
      @HiveField(4) String? link,
      @HiveField(5) String? content,
      @HiveField(6) List<File>? files,
      @HiveField(7) int? nextNoticeId,
      @HiveField(8) String? nextNoticeTitle,
      @HiveField(9) int? previousNoticeId,
      @HiveField(10) String? previousNoticeTitle});
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res, $Val extends Notice>
    implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? title = null,
    Object? date = null,
    Object? link = freezed,
    Object? content = freezed,
    Object? files = freezed,
    Object? nextNoticeId = freezed,
    Object? nextNoticeTitle = freezed,
    Object? previousNoticeId = freezed,
    Object? previousNoticeTitle = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>?,
      nextNoticeId: freezed == nextNoticeId
          ? _value.nextNoticeId
          : nextNoticeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nextNoticeTitle: freezed == nextNoticeTitle
          ? _value.nextNoticeTitle
          : nextNoticeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      previousNoticeId: freezed == previousNoticeId
          ? _value.previousNoticeId
          : previousNoticeId // ignore: cast_nullable_to_non_nullable
              as int?,
      previousNoticeTitle: freezed == previousNoticeTitle
          ? _value.previousNoticeTitle
          : previousNoticeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeImplCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$$NoticeImplCopyWith(
          _$NoticeImpl value, $Res Function(_$NoticeImpl) then) =
      __$$NoticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String index,
      @HiveField(2) String title,
      @HiveField(3) DateTime date,
      @HiveField(4) String? link,
      @HiveField(5) String? content,
      @HiveField(6) List<File>? files,
      @HiveField(7) int? nextNoticeId,
      @HiveField(8) String? nextNoticeTitle,
      @HiveField(9) int? previousNoticeId,
      @HiveField(10) String? previousNoticeTitle});
}

/// @nodoc
class __$$NoticeImplCopyWithImpl<$Res>
    extends _$NoticeCopyWithImpl<$Res, _$NoticeImpl>
    implements _$$NoticeImplCopyWith<$Res> {
  __$$NoticeImplCopyWithImpl(
      _$NoticeImpl _value, $Res Function(_$NoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? title = null,
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
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
              as int?,
      nextNoticeTitle: freezed == nextNoticeTitle
          ? _value.nextNoticeTitle
          : nextNoticeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      previousNoticeId: freezed == previousNoticeId
          ? _value.previousNoticeId
          : previousNoticeId // ignore: cast_nullable_to_non_nullable
              as int?,
      previousNoticeTitle: freezed == previousNoticeTitle
          ? _value.previousNoticeTitle
          : previousNoticeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeImpl implements _Notice {
  const _$NoticeImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.index,
      @HiveField(2) required this.title,
      @HiveField(3) required this.date,
      @HiveField(4) this.link,
      @HiveField(5) this.content,
      @HiveField(6) final List<File>? files,
      @HiveField(7) this.nextNoticeId,
      @HiveField(8) this.nextNoticeTitle,
      @HiveField(9) this.previousNoticeId,
      @HiveField(10) this.previousNoticeTitle})
      : _files = files;

  factory _$NoticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String index;
  @override
  @HiveField(2)
  final String title;
  @override
  @HiveField(3)
  final DateTime date;
  @override
  @HiveField(4)
  final String? link;
  @override
  @HiveField(5)
  final String? content;
  final List<File>? _files;
  @override
  @HiveField(6)
  List<File>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(7)
  final int? nextNoticeId;
  @override
  @HiveField(8)
  final String? nextNoticeTitle;
  @override
  @HiveField(9)
  final int? previousNoticeId;
  @override
  @HiveField(10)
  final String? previousNoticeTitle;

  @override
  String toString() {
    return 'Notice(id: $id, index: $index, title: $title, date: $date, link: $link, content: $content, files: $files, nextNoticeId: $nextNoticeId, nextNoticeTitle: $nextNoticeTitle, previousNoticeId: $previousNoticeId, previousNoticeTitle: $previousNoticeTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.title, title) || other.title == title) &&
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
      date,
      link,
      content,
      const DeepCollectionEquality().hash(_files),
      nextNoticeId,
      nextNoticeTitle,
      previousNoticeId,
      previousNoticeTitle);

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeImplCopyWith<_$NoticeImpl> get copyWith =>
      __$$NoticeImplCopyWithImpl<_$NoticeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeImplToJson(
      this,
    );
  }
}

abstract class _Notice implements Notice {
  const factory _Notice(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String index,
      @HiveField(2) required final String title,
      @HiveField(3) required final DateTime date,
      @HiveField(4) final String? link,
      @HiveField(5) final String? content,
      @HiveField(6) final List<File>? files,
      @HiveField(7) final int? nextNoticeId,
      @HiveField(8) final String? nextNoticeTitle,
      @HiveField(9) final int? previousNoticeId,
      @HiveField(10) final String? previousNoticeTitle}) = _$NoticeImpl;

  factory _Notice.fromJson(Map<String, dynamic> json) = _$NoticeImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get index;
  @override
  @HiveField(2)
  String get title;
  @override
  @HiveField(3)
  DateTime get date;
  @override
  @HiveField(4)
  String? get link;
  @override
  @HiveField(5)
  String? get content;
  @override
  @HiveField(6)
  List<File>? get files;
  @override
  @HiveField(7)
  int? get nextNoticeId;
  @override
  @HiveField(8)
  String? get nextNoticeTitle;
  @override
  @HiveField(9)
  int? get previousNoticeId;
  @override
  @HiveField(10)
  String? get previousNoticeTitle;

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeImplCopyWith<_$NoticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

File _$FileFromJson(Map<String, dynamic> json) {
  return _File.fromJson(json);
}

/// @nodoc
mixin _$File {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get link => throw _privateConstructorUsedError;

  /// Serializes this File to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileCopyWith<File> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileCopyWith<$Res> {
  factory $FileCopyWith(File value, $Res Function(File) then) =
      _$FileCopyWithImpl<$Res, File>;
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String link});
}

/// @nodoc
class _$FileCopyWithImpl<$Res, $Val extends File>
    implements $FileCopyWith<$Res> {
  _$FileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileImplCopyWith<$Res> implements $FileCopyWith<$Res> {
  factory _$$FileImplCopyWith(
          _$FileImpl value, $Res Function(_$FileImpl) then) =
      __$$FileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String link});
}

/// @nodoc
class __$$FileImplCopyWithImpl<$Res>
    extends _$FileCopyWithImpl<$Res, _$FileImpl>
    implements _$$FileImplCopyWith<$Res> {
  __$$FileImplCopyWithImpl(_$FileImpl _value, $Res Function(_$FileImpl) _then)
      : super(_value, _then);

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
  }) {
    return _then(_$FileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileImpl implements _File {
  const _$FileImpl(
      {@HiveField(0) required this.name, @HiveField(1) required this.link});

  factory _$FileImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String link;

  @override
  String toString() {
    return 'File(name: $name, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, link);

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      __$$FileImplCopyWithImpl<_$FileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileImplToJson(
      this,
    );
  }
}

abstract class _File implements File {
  const factory _File(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String link}) = _$FileImpl;

  factory _File.fromJson(Map<String, dynamic> json) = _$FileImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get link;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
