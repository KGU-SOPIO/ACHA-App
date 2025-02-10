import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_list_event.freezed.dart';

@freezed
class NoticeListEvent with _$NoticeListEvent {
  const factory NoticeListEvent.fetchNoticeList() = FetchNoticeList;
}