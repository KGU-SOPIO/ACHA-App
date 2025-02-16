import 'package:acha/domain/repositories/index.dart';

class FetchAlertStatusUseCase {
  FetchAlertStatusUseCase({required this.alertRepository});

  final AlertRepository alertRepository;

  Future<bool> call() async {
    return await alertRepository.fetchAlertStatus();
  }
}

class UpdateAlertStatusUseCase {
  UpdateAlertStatusUseCase({required this.alertRepository});

  final AlertRepository alertRepository;

  Future<void> call({required bool isEnabled}) async {
    await alertRepository.updateAlertStatus(isEnabled: isEnabled);
  }
}
