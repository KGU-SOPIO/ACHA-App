import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'notice_list_state.freezed.dart';

enum NoticeListStatus { loading, loaded, error }

@freezed
class NoticeListState with _$NoticeListState {
  const factory NoticeListState({
    required NoticeListStatus status,
    Notices? notices,
    String? errorMessage
  }) = _NoticeListState;
}