
import 'package:cours/RESTAPI/API%20REST/service.dart';
import 'package:flutter/material.dart';

import '../API MODEL/model.dart';

class ScreeApiModel extends StatefulWidget {
  const ScreeApiModel({Key? key}) : super(key: key);

  @override
  State<ScreeApiModel> createState() => _ScreeApiModelState();
}

class _ScreeApiModelState extends State<ScreeApiModel> {
  List<User> users = [];

  Future<void> fetchAll() async {
    final response = await ApiService.allData();
    setState(() {
      users = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchAll,
        child: const Icon(Icons.list),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Text('ALLDATA'),
              Column(
                children: users.map((e) {
                  return Column(
                    children: [
                      Text(e.email),
                      Text(e.name.title),
                    ],
                  );
                }).toList(),
              ),
            ],
          )),
    );
  }
}
