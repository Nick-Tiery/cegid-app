import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetChecker {
  Future<bool> checkConnection() async {
    ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    if (connectivityResult != ConnectivityResult.none) {
      return await InternetConnectionChecker().hasConnection;
    }

    return false;
  }
}
