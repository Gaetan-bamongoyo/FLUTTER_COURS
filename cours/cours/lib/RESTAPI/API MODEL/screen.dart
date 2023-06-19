import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenApiModel extends StatefulWidget {
  const ScreenApiModel({ Key? key }) : super(key: key);

  @override
  State<ScreenApiModel> createState() => _ScreenApiModelState();
}

class _ScreenApiModelState extends State<ScreenApiModel> {
  List<dynamic> users = [];
  @override
    Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: fetchUsers,
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: ((context, index) {
            final user = users[index];
            final email = user['email'];
            return ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(email),
            );
          }),
        ));
  }

  void fetchUsers() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print('fetchUsers completed');
  }
}