import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class NoticeList with _$NoticeList {
  const factory NoticeList({
    required List<Notice> notices,
  }) = _NoticeList;

  factory NoticeList.fromJson(Map<String, dynamic> json) => _$NoticeListFromJson(json);
}

@freezed
class Notice with _$Notice {
  const factory Notice({
    required String index,
    required String title,
    required DateTime date,
    required String link,
    required String content,
    required List<File> files,
  }) = _Notice;

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}

@freezed
class File with _$File {
  const factory File({
    required String name,
    required String link,
  }) = _File;

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
}
