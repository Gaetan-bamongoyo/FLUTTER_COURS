import 'package:flutter/material.dart';

class LabelField extends StatelessWidget {
  const LabelField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.justify,
      obscureText: true,
      // controller: ,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
         hintText: 'Entre le texte',
         labelText: 'Nom',
         icon: Icon(Icons.person, color: Colors.blue,),
      ),
    );
  }
}