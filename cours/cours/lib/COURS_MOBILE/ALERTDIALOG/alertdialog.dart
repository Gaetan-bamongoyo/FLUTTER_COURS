import 'package:flutter/material.dart';

class DialogAlert extends StatelessWidget {
  const DialogAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Column(
          children: [
            AlertDialog(
              title: const Text("Vous etes sur ?"),
              content: const Text("Vous etes sur ?"),
              actions: [
                SimpleDialogOption(
                  onPressed: (() {}),
                  child: const Text("OUI"),
                ),
                SimpleDialogOption(
                  onPressed: (() {}),
                  child: const Text("OUI"),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
