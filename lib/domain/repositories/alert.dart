abstract class AlertRepository {
  Future<bool> fetchAlertStatus();
  Future<void> updateAlertStatus({required bool isEnabled});
}
