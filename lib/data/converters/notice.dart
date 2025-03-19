import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class NoticeResponseConverter
    implements JsonConverter<NoticeModel, Map<String, dynamic>> {
  const NoticeResponseConverter({required this.field});

  final String field;

  @override
  NoticeModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return Notice.fromJson(json);
    } else {
      return NoticeError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(NoticeModel object) => object.toJson();
}
