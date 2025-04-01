import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
  const factory NoticeModel({
    required int id,
    required String title,
    required String professor,
    required DateTime date,
    String? index,
    String? content,
    List<File>? files,
    NoticeReference? prev,
    NoticeReference? next,
  }) = Notice;

  const factory NoticeModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = NoticeError;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      const NoticeResponseConverter(field: 'id').fromJson(json);
}

@freezed
class NoticeReferenceModel with _$NoticeReferenceModel {
  const factory NoticeReferenceModel({
    required int id,
    required String title,
  }) = NoticeReference;

  const factory NoticeReferenceModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = NoticeReferenceError;

  factory NoticeReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeReferenceModelFromJson(json);
}
