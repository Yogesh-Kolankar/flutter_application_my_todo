import 'package:flutter/material.dart';
import 'package:flutter_application_my_todo/appbar.dart';
import 'package:flutter_application_my_todo/providerscreen.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var textField1 = TextEditingController();

  var textField2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderState>(context);
    return Scaffold(
      appBar: AppBar(title: MyAppBar()),
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              
              decoration: InputDecoration(
                  hintText: "Enter Title",
                  labelText: "Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              controller: textField1,
            ),
            SizedBox(height: 10),
            TextField(
              
              decoration: InputDecoration(
                  hintText: "Enter Description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              controller: textField2,
            ),
            SizedBox(height: 80),
            ElevatedButton(
                onPressed: () {
                  state.save(textField1.text, textField2.text);
                  Navigator.of(context).pop();
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
