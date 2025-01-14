import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_event.freezed.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.fetch() = Fetch;
}