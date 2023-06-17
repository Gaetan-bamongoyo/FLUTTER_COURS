import 'package:cours/api/model.dart';
import 'package:cours/api/service.dart';
import 'package:flutter/material.dart';

class ApiUi extends StatefulWidget {
  const ApiUi({Key? key}) : super(key: key);

  @override
  State<ApiUi> createState() => _ApiUiState();
}

class _ApiUiState extends State<ApiUi> {
  List<Post>? _user;
  bool isLoading = false;

  @override
  void iniState() {
    super.initState();

    //
    getData();
  }

  getData() async {
    _user = await Service().getPost();
    // if (_user != null) {
    //   setState(() {
    //     isLoading = true;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: _user!.map((e) {
              return Container(
                child: Text(
                  e.title,
                  style: TextStyle(color: Colors.blue),
                ),
              );
            }).toList(),
          ),
        )
        // Visibility(
        //   visible: isLoading,
        //   child: ListView.builder(
        //       itemCount: _user?.length,
        //       itemBuilder: (context, index) {
        //         return Container(
        //           child: Text(_user![index].title, style: TextStyle(color: Colors.blue),),
        //         );
        //       }),
        //       replacement: Center(
        //         child: CircularProgressIndicator(),
        //       ),
        // ),
        );
  }
}
