import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/alert/index.dart';

import 'package:acha/repository/index.dart';

class AlertBloc extends Bloc<AlertEvent, AlertState> {
  AlertBloc({required this.alertRepository}) : super(const AlertState(status: AlertStatus.loading)) {
    on<Fetch>(_onFetchAlert);
    on<StatusChanged>(_onStatusChanged);
  }

  final AlertRepository alertRepository;

  /// 설정된 알림 상태를 요청합니다.
  Future<void> _onFetchAlert(Fetch event, Emitter<AlertState> emit) async {
    try {
      final bool isEnabled = await alertRepository.fetchSetting();
      emit(state.copyWith(status: AlertStatus.loaded, isEnabled: isEnabled));
    } on DioException catch (e) {
      emit(state.copyWith(status: AlertStatus.error, message: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: AlertStatus.error, message: '알림 상태를 불러오지 못했어요'));
    }
  }

  /// 알림 상태 변경을 요청합니다.
  Future<void> _onStatusChanged(StatusChanged event, Emitter<AlertState> emit) async {
    emit(state.copyWith(status: AlertStatus.loading));
    try {
      await alertRepository.updateSetting(isEnabled: event.isEnabled);
      emit(state.copyWith(status: AlertStatus.changed, isEnabled: event.isEnabled, message: '알림 상태를 변경했어요'));
    } on DioException catch (e) {
      emit(state.copyWith(status: AlertStatus.error, isEnabled: !event.isEnabled, message: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: AlertStatus.error, isEnabled: !event.isEnabled, message: '알림 상태를 변경하지 못했어요'));
    }
  }
}