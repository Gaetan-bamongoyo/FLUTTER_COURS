import 'package:cours/COURS_MOBILE/PAGEVIEW/pageview.dart';
import 'package:flutter/material.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: expos.map((e) {
            return ListTile(
              title: Text(e.title, style: TextStyle(color: Colors.red) ),
            );
          }).toList(),
        )));
  }
}
