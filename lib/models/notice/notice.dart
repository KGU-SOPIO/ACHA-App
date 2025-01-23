import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notices with _$Notices {
  const factory Notices({
    @Default([]) List<Notice>? notices
  }) = _Notices;

  factory Notices.fromJson(Map<String, dynamic> json) => _$NoticesFromJson(json);
}

@freezed
@HiveType(typeId: 4)
class Notice with _$Notice {
  const factory Notice({
    @HiveField(0) required int id,
    @HiveField(1) required String index,
    @HiveField(2) required String title,
    @HiveField(3) required String professor,
    @HiveField(4) required DateTime date,
    @HiveField(5) String? link,
    @HiveField(6) String? content,
    @HiveField(7) List<File>? files,
    @HiveField(8) int? nextNoticeId,
    @HiveField(9) String? nextNoticeTitle,
    @HiveField(10) int? previousNoticeId,
    @HiveField(11) String? previousNoticeTitle,
  }) = _Notice;

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}

@freezed
@HiveType(typeId: 5)
class File with _$File {
  const factory File({
    @HiveField(0) required String name,
    @HiveField(1) required String link,
  }) = _File;

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
}