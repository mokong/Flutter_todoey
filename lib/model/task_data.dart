import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }
}
