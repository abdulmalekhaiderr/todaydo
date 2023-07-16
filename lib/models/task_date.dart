import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/sqldb.dart';

class TaskData extends ChangeNotifier {
  SqlDb db = SqlDb();

  List<Task> tasks = [
    //Task(name: "go shopping"),
    // Task(name: "buy a gift"),
    // Task(name: "repair the car"),
  ];
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updataTask(Task task) {
    task.donechang();
    notifyListeners();
  }

  void deletetask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
