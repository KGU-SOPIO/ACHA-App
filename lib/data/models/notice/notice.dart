import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
  const factory NoticeModel({
    required String id,
    required String index,
    required String title,
    required String professor,
    required DateTime date,
    String? link,
    String? content,
    List<File>? files,
    String? nextNoticeId,
    String? nextNoticeTitle,
    String? previousNoticeId,
    String? previousNoticeTitle,
  }) = Notice;

  const factory NoticeModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = NoticeError;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      const NoticeResponseConverter(field: 'id').fromJson(json);
}
