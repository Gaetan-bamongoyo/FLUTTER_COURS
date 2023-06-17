import 'package:flutter/material.dart';

class Bloq extends StatefulWidget {
  const Bloq({ Key? key }) : super(key: key);

  @override
  State<Bloq> createState() => _BloqState();
}

class _BloqState extends State<Bloq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("PROFIL"),
      ),
    );
  }
}