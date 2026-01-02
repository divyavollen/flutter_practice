import 'package:hive_ce_flutter/hive_flutter.dart';

class ToDoDatabase {
  final _myBox = Hive.box('mybox');

  List toDoList = [];

  void createInitialData() {
    toDoList = [
      ["Drink Water", false],
      ["Exercise", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
