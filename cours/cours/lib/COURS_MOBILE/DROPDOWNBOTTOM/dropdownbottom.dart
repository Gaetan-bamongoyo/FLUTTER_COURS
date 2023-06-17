import 'package:flutter/material.dart';

class ListDropDown extends StatefulWidget {
  const ListDropDown({Key? key}) : super(key: key);

  @override
  State<ListDropDown> createState() => _ListDropDownState();
}

class _ListDropDownState extends State<ListDropDown> {
  String def = 'Item 0';
  String? value;
  final listitem = ['Item 1', 'Item 2', 'Item 3'];
  // List listitem = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DropdownButton(
            value: def,
            items: listitem.map(buildMenuItem).toList(),
            onChanged: (String? value) => setState(() {
              this.value = value;
            }),
          )
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        child: Text(item),
        value: item,
      );
}
