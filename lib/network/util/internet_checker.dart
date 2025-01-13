import 'package:connectivity_plus/connectivity_plus.dart';

class InternetChecker {
  final Connectivity _connectivity = Connectivity();

  Future<bool> isConnected() async {
    List<ConnectivityResult> connectivityResults = await _connectivity.checkConnectivity();
    return connectivityResults.contains(ConnectivityResult.mobile) || connectivityResults.contains(ConnectivityResult.wifi);
  }
}