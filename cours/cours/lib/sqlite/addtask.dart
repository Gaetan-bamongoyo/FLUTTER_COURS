import 'package:cours/sqlite/db_header.dart';
import 'package:cours/sqlite/menu.dart';
import 'package:cours/sqlite/model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  DBHelper? dbHelper;
  late Future<List<TodoModel>> dataList;
  final _fromKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
  }

  @override
  Widget build(BuildContext context) {
    final title = TextEditingController();
    final desc = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: Column(
                  children: [
                    Form(
                        key: _fromKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                controller: title,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Note Title"),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter some text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                minLines: 10,
                                controller: desc,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Note text"),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter some text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {
                          if (_fromKey.currentState!.validate()) {
                            dbHelper!.insert(TodoModel(
                                title: title.text,
                                desc: desc.text,
                                dateandtime: DateFormat('yMd')
                                    .add_jm()
                                    .format(DateTime.now())
                                    .toString()));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => ListTodoModel())));

                            title.clear();
                            desc.clear();

                            print("Data add");
                          }
                        },
                        child: Text("Enregistrer"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
