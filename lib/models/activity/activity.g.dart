// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeekActivitiesAdapter extends TypeAdapter<WeekActivities> {
  @override
  final int typeId = 2;

  @override
  WeekActivities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeekActivities(
      week: fields[0] as int?,
      activities: (fields[1] as List?)?.cast<Activity>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeekActivities obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.week)
      ..writeByte(1)
      ..write(obj.activities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeekActivitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ActivityAdapter extends TypeAdapter<Activity> {
  @override
  final int typeId = 3;

  @override
  Activity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Activity(
      type: fields[0] as ActivityType,
      available: fields[1] as bool,
      name: fields[2] as String?,
      link: fields[3] as String?,
      code: fields[4] as String?,
      deadline: fields[5] as DateTime?,
      lectureTime: fields[6] as String?,
      attendance: fields[7] as bool?,
      gradingStatus: fields[8] as String?,
      timeLeft: fields[9] as String?,
      lastModified: fields[10] as String?,
      description: fields[11] as String?,
      courseName: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Activity obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.available)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.link)
      ..writeByte(4)
      ..write(obj.code)
      ..writeByte(5)
      ..write(obj.deadline)
      ..writeByte(6)
      ..write(obj.lectureTime)
      ..writeByte(7)
      ..write(obj.attendance)
      ..writeByte(8)
      ..write(obj.gradingStatus)
      ..writeByte(9)
      ..write(obj.timeLeft)
      ..writeByte(10)
      ..write(obj.lastModified)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.courseName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ActivityTypeAdapter extends TypeAdapter<ActivityType> {
  @override
  final int typeId = 0;

  @override
  ActivityType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ActivityType.lecture;
      case 1:
        return ActivityType.assignment;
      case 2:
        return ActivityType.url;
      default:
        return ActivityType.lecture;
    }
  }

  @override
  void write(BinaryWriter writer, ActivityType obj) {
    switch (obj) {
      case ActivityType.lecture:
        writer.writeByte(0);
        break;
      case ActivityType.assignment:
        writer.writeByte(1);
        break;
      case ActivityType.url:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseActivitiesImpl _$$CourseActivitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseActivitiesImpl(
      weekActivities: (json['weekActivities'] as List<dynamic>?)
              ?.map((e) => WeekActivities.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CourseActivitiesImplToJson(
        _$CourseActivitiesImpl instance) =>
    <String, dynamic>{
      'weekActivities': instance.weekActivities,
    };

_$WeekActivitiesImpl _$$WeekActivitiesImplFromJson(Map<String, dynamic> json) =>
    _$WeekActivitiesImpl(
      week: (json['week'] as num?)?.toInt(),
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeekActivitiesImplToJson(
        _$WeekActivitiesImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'activities': instance.activities,
    };

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
      available: json['available'] as bool,
      name: json['name'] as String?,
      link: json['link'] as String?,
      code: json['code'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      lectureTime: json['lectureTime'] as String?,
      attendance: json['attendance'] as bool?,
      gradingStatus: json['gradingStatus'] as String?,
      timeLeft: json['timeLeft'] as String?,
      lastModified: json['lastModified'] as String?,
      description: json['description'] as String?,
      courseName: json['courseName'] as String?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'type': _$ActivityTypeEnumMap[instance.type]!,
      'available': instance.available,
      'name': instance.name,
      'link': instance.link,
      'code': instance.code,
      'deadline': instance.deadline?.toIso8601String(),
      'lectureTime': instance.lectureTime,
      'attendance': instance.attendance,
      'gradingStatus': instance.gradingStatus,
      'timeLeft': instance.timeLeft,
      'lastModified': instance.lastModified,
      'description': instance.description,
      'courseName': instance.courseName,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.lecture: 'lecture',
  ActivityType.assignment: 'assignment',
  ActivityType.url: 'url',
};
