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
      professor: fields[1] as String,
      lectureRoom: fields[2] as String,
      deadline: fields[3] as DateTime?,
      link: fields[4] as String?,
      code: fields[5] as String?,
      weekActivities: (fields[6] as List?)?.cast<WeekActivities>(),
      notices: (fields[7] as List?)?.cast<Notice>(),
    );
  }

  @override
  void write(BinaryWriter writer, Course obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.professor)
      ..writeByte(2)
      ..write(obj.lectureRoom)
      ..writeByte(3)
      ..write(obj.deadline)
      ..writeByte(4)
      ..write(obj.link)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.weekActivities)
      ..writeByte(7)
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

_$CoursesImpl _$$CoursesImplFromJson(Map<String, dynamic> json) =>
    _$CoursesImpl(
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoursesImplToJson(_$CoursesImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      professor: json['professor'] as String,
      lectureRoom: json['lectureRoom'] as String,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      link: json['link'] as String?,
      code: json['code'] as String?,
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
      'professor': instance.professor,
      'lectureRoom': instance.lectureRoom,
      'deadline': instance.deadline?.toIso8601String(),
      'link': instance.link,
      'code': instance.code,
      'weekActivities': instance.weekActivities,
      'notices': instance.notices,
    };
