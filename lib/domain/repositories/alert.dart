import 'package:dartz/dartz.dart';

abstract class AlertRepository {
  Future<Either<String, bool>> fetchAlertStatus();
  Future<Either<String, Unit>> updateAlertStatus({required bool isEnabled});
}
