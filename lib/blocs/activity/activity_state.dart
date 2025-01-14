import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'activity_state.freezed.dart';

enum ActivityStatus { loading, loaded, error }

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    required ActivityStatus status,
    Activities? activities,
    String? message
  }) = _ActivityState;
}