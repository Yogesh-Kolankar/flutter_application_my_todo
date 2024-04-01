import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 100),
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'toDo  ',
              style: TextStyle(fontSize: 15, color: Colors.grey)),
          TextSpan(
              text: "App",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontStyle: FontStyle.italic))
        ]),
      ),
    );
  }
}
