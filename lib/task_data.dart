import 'package:flutter/foundation.dart';
import 'Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title :'morning run'),
    Task(title :'daily workout'),
    Task(title :'ofibezoiiaxbz')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }




}