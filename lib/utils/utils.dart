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

Future<Future> onWillPop(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Exit App'),
      content: const Text('Are you sure'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => {
            Navigator.pop(context, true),
            SystemNavigator.pop(), //
          },
          child: const Text('Exit'),
        ),
      ],
    ),
  );
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
