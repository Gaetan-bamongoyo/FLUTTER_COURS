import 'package:cours/COURS_MOBILE/BOTTOMBAR/page/bloq.dart';
import 'package:cours/COURS_MOBILE/BOTTOMBAR/page/profil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentItem = 0;
  final screens = [
    const Profil(),
    const Bloq(),
    const Profil(),
    const Bloq(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentItem],
        bottomNavigationBar: BottomNavigationBar(
            onTap: ((index) {
              setState(() {
                currentItem = index;
              });
            }),
            // visibilite du label
            showSelectedLabels: false,
            // lorsque le label n'est selectionner
            unselectedItemColor: Colors.blue,
            // selection de l'item
            selectedItemColor: Colors.red,
            items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
        ]));
  }
}
