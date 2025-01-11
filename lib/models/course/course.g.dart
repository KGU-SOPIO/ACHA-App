// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseAdapter extends TypeAdapter<Course> {
  @override
  final int typeId = 1;

  @override
  Course read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Course(
      name: fields[0] as String,
      link: fields[1] as String,
      code: fields[2] as String,
      professor: fields[3] as String,
      lectureRoom: fields[4] as String,
      weekActivities: (fields[5] as List?)?.cast<WeekActivities>(),
      notices: (fields[6] as List?)?.cast<Notice>(),
    );
  }

  @override
  void write(BinaryWriter writer, Course obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.link)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.professor)
      ..writeByte(4)
      ..write(obj.lectureRoom)
      ..writeByte(5)
      ..write(obj.weekActivities)
      ..writeByte(6)
      ..write(obj.notices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      link: json['link'] as String,
      code: json['code'] as String,
      professor: json['professor'] as String,
      lectureRoom: json['lectureRoom'] as String,
      weekActivities: (json['weekActivities'] as List<dynamic>?)
          ?.map((e) => WeekActivities.fromJson(e as Map<String, dynamic>))
          .toList(),
      notices: (json['notices'] as List<dynamic>?)
          ?.map((e) => Notice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
      'code': instance.code,
      'professor': instance.professor,
      'lectureRoom': instance.lectureRoom,
      'weekActivities': instance.weekActivities,
      'notices': instance.notices,
    };
