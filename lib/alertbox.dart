import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: Container(
      height: 120,
      child: Column(children: [
        Text("You want to Delete"),
        
      ]),
    ),backgroundColor: Colors.amberAccent,);
  }
}