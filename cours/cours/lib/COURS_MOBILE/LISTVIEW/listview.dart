import 'package:flutter/material.dart';


class ViewList extends StatelessWidget {
  const ViewList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.flight_takeoff, color: Colors.blue,),
          title: Text("Bienvenu toroto", style: TextStyle(color: Colors.red),),
          subtitle: Text("Bienvenu toroto", style: TextStyle(color: Colors.red),),
        ),
        ListTile(
          leading: Icon(Icons.flight_takeoff, color: Colors.blue,),
          title: Text("Bienvenu toroto", style: TextStyle(color: Colors.red),),
          subtitle: Text("Bienvenu toroto", style: TextStyle(color: Colors.red),),
        ),
        ListTile(
          leading: Icon(Icons.flight_takeoff, color: Colors.blue,),
          title: Text("Bienvenu toroto", style: TextStyle(color: Colors.red),),
          subtitle: Text("Bienvenu toroto", style: TextStyle(color: Colors.red),),
        ),
      ],
    );
  }
}