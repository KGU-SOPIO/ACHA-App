import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'notice_list.freezed.dart';
part 'notice_list.g.dart';

@freezed
class NoticeListModel with _$NoticeListModel {
  const factory NoticeListModel({
    required List<Notice> noticeList,
  }) = NoticeList;

  const factory NoticeListModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = NoticeListError;

  factory NoticeListModel.fromJson(Map<String, dynamic> json) =>
      const NoticeListResponseConverter().fromJson(json);
}
