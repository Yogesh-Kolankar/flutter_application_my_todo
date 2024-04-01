import 'package:flutter/material.dart';
import 'package:flutter_application_my_todo/providerscreen.dart';

import 'package:flutter_application_my_todo/screen1.dart';
import 'package:provider/provider.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderState>(
        create: (context) => ProviderState(),
        child: MaterialApp(
            title: "to Do",
            theme: ThemeData(primarySwatch: Colors.amber),
            debugShowCheckedModeBanner: false,
            home: const Screen()));
  }
}
