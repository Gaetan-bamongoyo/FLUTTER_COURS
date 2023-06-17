import 'package:flutter/material.dart';

class ViewListBuilder extends StatefulWidget {
  const ViewListBuilder({Key? key}) : super(key: key);

  @override
  State<ViewListBuilder> createState() => _ViewListBuilderState();
}

class _ViewListBuilderState extends State<ViewListBuilder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text('flutter run')));
                },
                child: Text("Snackbar")),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, int index) {
                  return Container(
                    color: Colors.red,
                    child: ListTile(
                      trailing: Icon(Icons.device_hub),
                      title: Text("Hello"),
                      subtitle: Text("Hello"),
                      leading: Icon(Icons.local_activity),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, int index) {
                  return Container(
                    color: Colors.blue,
                    child: ListTile(
                      trailing: Icon(Icons.device_hub),
                      title: Text("Hello"),
                      subtitle: Text("Hello"),
                      leading: Icon(Icons.local_activity),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, int index) {
                  return Container(
                    color: Colors.black,
                    child: ListTile(
                      trailing: Icon(Icons.device_hub),
                      title: Text("Hello"),
                      subtitle: Text("Hello"),
                      leading: Icon(Icons.local_activity),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
