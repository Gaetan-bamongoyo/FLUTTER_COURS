import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
          allowImplicitScrolling: true,
          itemCount: expos.length,
          itemBuilder: (BuildContext buildcontext, int index) {
            return Screen(expo: expos[index]);
          }),
    );
  }
}

class Exposition {
  final String title;
  final String image;
  final String description;

  const Exposition(this.title, this.image, this.description);
}

final List<Exposition> expos = [
  const Exposition("title", "image", "description"),
  const Exposition("Absolu", "image", "description"),
  const Exposition("title", "image", "description")
];

class Screen extends StatefulWidget {
  final Exposition expo;
  const Screen({Key? key, required this.expo}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          ListTile(
            title: Text(
              widget.expo.title,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(widget.expo.image),
          )
        ],
      ),
    );
  }
}
