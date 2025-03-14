import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

part 'activity_state.freezed.dart';

enum ActivityStatus { loading, loaded, error }

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    required ActivityStatus status,
    ActivityList? activityList,
    String? errorMessage,
  }) = _ActivityState;
}
