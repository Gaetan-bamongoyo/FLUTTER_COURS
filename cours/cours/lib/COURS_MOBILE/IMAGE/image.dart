import 'package:flutter/material.dart';

class ImageListPicker extends StatefulWidget {
  const ImageListPicker({Key? key}) : super(key: key);

  @override
  State<ImageListPicker> createState() => _ImageListPickerState();
}

class _ImageListPickerState extends State<ImageListPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/image/trophee.png",
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
            CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/image/trophee.png",
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/image/trophee.png"),
              radius: 120,
            )
          ],
        ),
      ),
    );
  }
}
