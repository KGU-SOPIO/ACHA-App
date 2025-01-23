// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoticeAdapter extends TypeAdapter<Notice> {
  @override
  final int typeId = 4;

  @override
  Notice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Notice(
      id: fields[0] as int,
      index: fields[1] as String,
      title: fields[2] as String,
      professor: fields[3] as String,
      date: fields[4] as DateTime,
      link: fields[5] as String?,
      content: fields[6] as String?,
      files: (fields[7] as List?)?.cast<File>(),
      nextNoticeId: fields[8] as int?,
      nextNoticeTitle: fields[9] as String?,
      previousNoticeId: fields[10] as int?,
      previousNoticeTitle: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Notice obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.index)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.professor)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.link)
      ..writeByte(6)
      ..write(obj.content)
      ..writeByte(7)
      ..write(obj.files)
      ..writeByte(8)
      ..write(obj.nextNoticeId)
      ..writeByte(9)
      ..write(obj.nextNoticeTitle)
      ..writeByte(10)
      ..write(obj.previousNoticeId)
      ..writeByte(11)
      ..write(obj.previousNoticeTitle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoticeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FileAdapter extends TypeAdapter<File> {
  @override
  final int typeId = 5;

  @override
  File read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return File(
      name: fields[0] as String,
      link: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, File obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.link);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticesImpl _$$NoticesImplFromJson(Map<String, dynamic> json) =>
    _$NoticesImpl(
      notices: (json['notices'] as List<dynamic>?)
              ?.map((e) => Notice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NoticesImplToJson(_$NoticesImpl instance) =>
    <String, dynamic>{
      'notices': instance.notices,
    };

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      id: (json['id'] as num).toInt(),
      index: json['index'] as String,
      title: json['title'] as String,
      professor: json['professor'] as String,
      date: DateTime.parse(json['date'] as String),
      link: json['link'] as String?,
      content: json['content'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextNoticeId: (json['nextNoticeId'] as num?)?.toInt(),
      nextNoticeTitle: json['nextNoticeTitle'] as String?,
      previousNoticeId: (json['previousNoticeId'] as num?)?.toInt(),
      previousNoticeTitle: json['previousNoticeTitle'] as String?,
    );

Map<String, dynamic> _$$NoticeImplToJson(_$NoticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'title': instance.title,
      'professor': instance.professor,
      'date': instance.date.toIso8601String(),
      'link': instance.link,
      'content': instance.content,
      'files': instance.files,
      'nextNoticeId': instance.nextNoticeId,
      'nextNoticeTitle': instance.nextNoticeTitle,
      'previousNoticeId': instance.previousNoticeId,
      'previousNoticeTitle': instance.previousNoticeTitle,
    };

_$FileImpl _$$FileImplFromJson(Map<String, dynamic> json) => _$FileImpl(
      name: json['name'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$FileImplToJson(_$FileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
    };
