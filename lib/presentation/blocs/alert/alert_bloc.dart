import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class AlertBloc extends Bloc<AlertEvent, AlertState> {
  AlertBloc({
    required AlertRepository alertRepository,
  }) : super(const AlertState(status: AlertStatus.loading)) {
    _fetchAlertStatusUseCase = FetchAlertStatusUseCase(
      alertRepository: alertRepository,
    );
    _updateAlertStatusUseCase = UpdateAlertStatusUseCase(
      alertRepository: alertRepository,
    );

    on<FetchAlertStatus>(_onFetchAlertStatus);
    on<DenyAlert>(_onDenyAlert);
    on<ChangeAlertStatus>(_onChangeAlertStatus);
  }

  late final FetchAlertStatusUseCase _fetchAlertStatusUseCase;
  late final UpdateAlertStatusUseCase _updateAlertStatusUseCase;

  /// 설정된 알림 상태를 요청합니다.
  Future<void> _onFetchAlertStatus(
    FetchAlertStatus event,
    Emitter<AlertState> emit,
  ) async {
    try {
      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.getNotificationSettings();
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        emit(state.copyWith(status: AlertStatus.loaded, isEnabled: false));
        return;
      }

      final result = await _fetchAlertStatusUseCase.call();
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: AlertStatus.error,
          message: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: AlertStatus.loaded,
          isEnabled: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: AlertStatus.error,
        message: '알림 상태를 불러오지 못했어요',
      ));
    }
  }

  /// 알림 거부 Toast를 띄웁니다.
  void _onDenyAlert(DenyAlert event, Emitter<AlertState> emit) {
    emit(state.copyWith(
      status: AlertStatus.denied,
      isEnabled: false,
      message: '강의와 과제 마감 알림을 받을 수 없어요',
    ));
  }

  /// 알림 상태 변경을 요청합니다.
  Future<void> _onChangeAlertStatus(
    ChangeAlertStatus event,
    Emitter<AlertState> emit,
  ) async {
    emit(state.copyWith(status: AlertStatus.loading));
    try {
      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.getNotificationSettings();
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        emit(state.copyWith(
          status: AlertStatus.error,
          isEnabled: !event.isEnabled,
          message: '알림 권한을 허용해 주세요',
        ));
        await Future.delayed(const Duration(milliseconds: 1500));
        await openAppSettings();
        return;
      }

      final result = await _updateAlertStatusUseCase.call(
        isEnabled: event.isEnabled,
      );
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: AlertStatus.error,
          isEnabled: !event.isEnabled,
          message: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: AlertStatus.changed,
          isEnabled: event.isEnabled,
          message: '알림 상태를 변경했어요',
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: AlertStatus.error,
        isEnabled: !event.isEnabled,
        message: '알림 상태를 변경하지 못했어요',
      ));
    }
  }
}
