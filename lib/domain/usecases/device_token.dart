import 'package:acha/domain/repositories/index.dart';

class UpdateDeviceTokenUseCase {
  UpdateDeviceTokenUseCase({required this.deviceTokenRepository});

  final DeviceTokenRepository deviceTokenRepository;

  Future<void> call(String? token) async {
    await deviceTokenRepository.updateDeviceToken(token);
  }
}
