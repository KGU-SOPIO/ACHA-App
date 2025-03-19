import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class NoticeListResponseConverter
    implements JsonConverter<NoticeListModel, Map<String, dynamic>> {
  const NoticeListResponseConverter({required this.field});

  final String field;

  @override
  NoticeListModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return NoticeList.fromJson(json);
    } else {
      return NoticeListError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(NoticeListModel object) => object.toJson();
}
