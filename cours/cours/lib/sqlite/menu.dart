import 'package:cours/sqlite/addtask.dart';
import 'package:cours/sqlite/db_header.dart';
import 'package:cours/sqlite/model.dart';
import 'package:flutter/material.dart';

class ListTodoModel extends StatefulWidget {
  const ListTodoModel({Key? key}) : super(key: key);

  @override
  State<ListTodoModel> createState() => _ListTodoModelState();
}

class _ListTodoModelState extends State<ListTodoModel> {
  DBHelper? dbHelper;
  late Future<List<TodoModel>> dataList;

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    loadData();
  }

  loadData() async {
    dataList = dbHelper!.getDataList();
    print(dataList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: FutureBuilder(
            future: dataList,
              builder: (context, AsyncSnapshot<List<TodoModel>> snapshot) {
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.data!.length == 0) {
              return Center(
                child: Text(
                  "Pas de note trouve",
                  style: TextStyle(fontSize: 25),
                ),
              );
            }  else {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  String todoTitle = snapshot.data![index].title.toString();
                  String todoDesc = snapshot.data![index].desc.toString();
                  return ListTile(
                    title: Text(todoDesc),
                  );
                },
              );
            }
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => AddTask())));
          }),
    );
  }
}
