import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:acha/repository/index.dart';
import 'package:acha/repository/exceptions/index.dart';
import 'package:acha/blocs/alert/index.dart';

class AlertBloc extends Bloc<AlertEvent, AlertState> {
  AlertBloc({required this.alertRepository}) : super(const AlertState(status: AlertStatus.loading)) {
    on<FetchAlertStatus>(_onFetchAlertStatus);
    on<DenyAlert>(_onDenyAlert);
    on<ChangeAlertStatus>(_onChangeAlertStatus);
  }

  final AlertRepository alertRepository;

  /// 설정된 알림 상태를 요청합니다.
  Future<void> _onFetchAlertStatus(FetchAlertStatus event, Emitter<AlertState> emit) async {
    try {
      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.getNotificationSettings();
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        emit(state.copyWith(status: AlertStatus.loaded, isEnabled: false));
        return;
      }

      final isEnabled = await alertRepository.fetchAlertStatus();
      emit(state.copyWith(status: AlertStatus.loaded, isEnabled: isEnabled));
    } on DioException catch (e) {
      emit(state.copyWith(status: AlertStatus.error, message: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(status: AlertStatus.error, message: e.message));
    } catch (e) {
      emit(state.copyWith(status: AlertStatus.error, message: '알림 상태를 불러오지 못했어요'));
    }
  }

  /// 알림 거부 Toast를 띄웁니다.
  void _onDenyAlert(DenyAlert event, Emitter<AlertState> emit) => emit(state.copyWith(status: AlertStatus.denied, isEnabled: false, message: '강의와 과제 마감 알림을 받을 수 없어요'));

  /// 알림 상태 변경을 요청합니다.
  Future<void> _onChangeAlertStatus(ChangeAlertStatus event, Emitter<AlertState> emit) async {
    emit(state.copyWith(status: AlertStatus.loading));
    try {
      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.getNotificationSettings();
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        emit(state.copyWith(status: AlertStatus.error, isEnabled: !event.isEnabled, message: '알림 권한을 허용해 주세요'));
        await Future.delayed(const Duration(milliseconds: 1500));
        await openAppSettings();
        return;
      }

      await alertRepository.updateAlertStatus(isEnabled: event.isEnabled);
      emit(state.copyWith(status: AlertStatus.changed, isEnabled: event.isEnabled, message: '알림 상태를 변경했어요'));
    } on DioException catch (e) {
      emit(state.copyWith(status: AlertStatus.error, isEnabled: !event.isEnabled, message: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(status: AlertStatus.error, isEnabled: !event.isEnabled, message: e.message));
    } catch (e) {
      emit(state.copyWith(status: AlertStatus.error, isEnabled: !event.isEnabled, message: '알림 상태를 변경하지 못했어요'));
    }
  }
}