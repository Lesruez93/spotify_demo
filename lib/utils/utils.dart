import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';



bool isAuthenticated() {
  //const storage = FlutterSecureStorage();
  final getStorage = GetStorage();

  var token = getStorage.read('token');

  // Check if the token exists and is not null
  return token != null;
}

Future<bool> checkConnectivity() async {
  final List<ConnectivityResult> connectivityResult =
      await (Connectivity().checkConnectivity());

  if (connectivityResult.contains(ConnectivityResult.mobile) ||
      connectivityResult.contains(ConnectivityResult.wifi)) {
    return true; // Connected to a mobile network or Wi-Fi.
  } else {
    return false; // Not connected to any network.
  }
}

Future<bool> onWillPop(BuildContext context) async {
  DateTime now = DateTime.now();
  if (_lastPressedAt == null ||
      now.difference(_lastPressedAt!) > Duration(seconds: 2)) {
    _lastPressedAt = now;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
        content: Text('Press back again to exit'),
        duration: Duration(seconds: 2), // Adjust duration as needed
      ),
    );
    return false; // Prevent immediate exit
  }
  SystemNavigator.pop();
  return false; // Allow exit on second press within 2 seconds
}

DateTime? _lastPressedAt;

void getSnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    content: Text(
      msg,
    ),
    backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
    duration: Duration(seconds: 5),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
