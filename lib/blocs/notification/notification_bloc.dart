import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/notification/notification_event.dart';
import 'package:acha/blocs/notification/notification_state.dart';

import 'package:acha/repository/notification.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc({required this.notificationRepository}) : super(const NotificationState()) {
    on<FetchNotification>(_onFetchNotification);
    on<StatusChanged>(_onStatusChanged);
  }

  final NotificationRepository notificationRepository;

  /// 알림 설정 상태를 요청합니다.
  Future<void> _onFetchNotification(FetchNotification event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(status: NotificationStatus.loading));
    try {
      final isEnabled = await notificationRepository.fetchSetting();
      emit(state.copyWith(isEnabled: isEnabled, status: NotificationStatus.success));
    } catch (e) {
      emit(state.copyWith(status: NotificationStatus.failure));
      GetIt.I<ToastManager>().error(message: "알림 설정을 불러오지 못했어요");
    }
  }

  /// 알림 설정 상태 변경을 요청합니다.
  Future<void> _onStatusChanged(StatusChanged event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(status: NotificationStatus.loading));
    try {
      await notificationRepository.updateSetting(isEnabled: event.isEnabled);
      emit(state.copyWith(isEnabled: event.isEnabled, status: NotificationStatus.success));
    } catch (e) {
      emit(state.copyWith(isEnabled: !event.isEnabled, status: NotificationStatus.failure));
      GetIt.I<ToastManager>().error(message: "알림 상태를 변경하지 못했어요");
    }
  }
}