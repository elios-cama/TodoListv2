import 'package:flutter/foundation.dart';
import 'Task.dart';
import 'dart:collection';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title :'morning run'),
    Task(title :'daily workout'),
    Task(title :'go to the gym')
  ];
  Color tileColor = Color(0xFF292E3C);

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

   void addTask(String newTaskTitle) {
    final task = Task(title: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
 

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}