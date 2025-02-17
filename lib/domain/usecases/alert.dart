import 'package:dartz/dartz.dart';

import 'package:acha/domain/repositories/index.dart';

class FetchAlertStatusUseCase {
  FetchAlertStatusUseCase({required this.alertRepository});

  final AlertRepository alertRepository;

  Future<Either<String, bool>> call() async {
    return await alertRepository.fetchAlertStatus();
  }
}

class UpdateAlertStatusUseCase {
  UpdateAlertStatusUseCase({required this.alertRepository});

  final AlertRepository alertRepository;

  Future<Either<String, Unit>> call({required bool isEnabled}) async {
    return await alertRepository.updateAlertStatus(isEnabled: isEnabled);
  }
}
