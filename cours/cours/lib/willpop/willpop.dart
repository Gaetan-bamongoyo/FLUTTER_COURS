import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class WillPopScop extends StatefulWidget {
  const WillPopScop({Key? key}) : super(key: key);

  @override
  State<WillPopScop> createState() => _WillPopScopState();
}

class _WillPopScopState extends State<WillPopScop> {
  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: const Center(),
        onWillPop: () async {
          final difference = DateTime.now().difference(timeBackPressed);
          final isExitWarning = difference >= const Duration(seconds: 2);

          timeBackPressed = DateTime.now();

          if (isExitWarning) {
            const message = 'Press back again to exit';
            // Fluttertoast.showToast(msg: message, fontSize: 18);
            return false;
          } else {
            // Fluttertoast.cancel();
            return true;
          }
        });
  }
}
