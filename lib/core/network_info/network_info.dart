import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkInfoProvider = Provider<NetworkInfo>((ref) => NetworkInfoImpl());

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl();

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await Connectivity().checkConnectivity();
    
    bool result = false;

    for (ConnectivityResult item in connectivityResult) {
      if (item == ConnectivityResult.mobile) {
        result = await checkDataConnection();
      } else if (item == ConnectivityResult.wifi) {
        result = await checkDataConnection();
      } else if (item == ConnectivityResult.bluetooth) {
        result = await checkDataConnection();
      } else if (item == ConnectivityResult.ethernet) {
        result = await checkDataConnection();
      } else {
        result = false;
      }
    }

    return result;
  }

  Future<bool> checkDataConnection() async {
    try {
      //if google ever gets blocked in your country
      //you'll have to update this line
      final result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
      // return true;
    } on SocketException catch (_) {
      return false;
    }
  }
}
