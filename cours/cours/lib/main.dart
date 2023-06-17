import 'package:cours/COURS_MOBILE/LISTVIEW/listviewbuilder.dart';
import 'package:cours/sqlite/addtask.dart';
import 'package:cours/sqlite/menu.dart';
import 'package:flutter/material.dart';

import 'COURS_MOBILE/ALERTDIALOG/alertdialog.dart';
import 'COURS_MOBILE/DROPDOWNBOTTOM/dropdownbottom.dart';
import 'COURS_MOBILE/IMAGE/image.dart';
import 'COURS_MOBILE/MAP/map.dart';
import 'COURS_MOBILE/PAGEVIEW/pageview.dart';
import 'SQFLITE_DATABASE/page/notes_page.dart';
import 'api/page.dart';
import 'calculatrice/calculatrice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ApiUi(),
    );
  }
}