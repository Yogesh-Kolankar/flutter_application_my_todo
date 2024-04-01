import 'package:flutter/material.dart';
import 'package:flutter_application_my_todo/todo_model.dart';

class ProviderState extends ChangeNotifier {
  List<TodoModel> items = [];

  void save(String title, String des) {
    items.add(TodoModel(id: items.length + 1, title: title, description: des));

    print(items[0].id);
    print(items[0].title);
    print(items[0].description);
    notifyListeners();
  }

  void checkBox(int id) {
    TodoModel b;
    b = items.firstWhere((element) => element.id == id);
    b.isChacked = !b.isChacked;
    notifyListeners();
  }

  void Remove(int index) {
    items.removeWhere((element) => element.id == index);

    notifyListeners();
  }
}
