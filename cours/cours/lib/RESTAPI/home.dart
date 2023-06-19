import 'dart:convert';

import 'package:cours/RESTAPI/API%20MODEL/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeApiPage extends StatefulWidget {
  const HomeApiPage({Key? key}) : super(key: key);

  @override
  State<HomeApiPage> createState() => _HomeApiPageState();
}

class _HomeApiPageState extends State<HomeApiPage> {
  List<User> users = [];
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
            final email = user.email;
            final gender = user.gender;
            final color = user.gender == 'male' ? Colors.blue : Colors.red;
            return ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(gender),
              tileColor: color,
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
    final results = json['results'] as List<dynamic>;
    final transform = results.map(((e) {
      return User(email: e['email'], gender: e['gender']);
    })).toList();
    setState(() {
      users = transform;
    });
    print('fetchUsers completed');
  }
}
