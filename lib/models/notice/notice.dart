import 'package:freezed_annotation/freezed_annotation.dart';

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
class Notice with _$Notice {
  const factory Notice({
    required int id,
    required String index,
    required String title,
    required String professor,
    required DateTime date,
    String? link,
    String? content,
    List<File>? files,
    int? nextNoticeId,
    String? nextNoticeTitle,
    int? previousNoticeId,
    String? previousNoticeTitle,
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