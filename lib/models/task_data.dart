import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {

  final List<Task> _tasks = [
    Task(name: 'Buy eggs'),
    Task(name: 'Pay market'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void toogleDone(int index) {
    tasks[index].toogleDone();
    notifyListeners();
  }
}