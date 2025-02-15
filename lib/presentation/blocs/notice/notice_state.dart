import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

part 'notice_state.freezed.dart';

enum NoticeStatus { loading, loaded, error }

@freezed
class NoticeState with _$NoticeState {
  const factory NoticeState(
      {required NoticeStatus status,
      Notice? notice,
      String? errorMessage}) = _NoticeState;
}
