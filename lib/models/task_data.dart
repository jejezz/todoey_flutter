import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(String title) {
    if (title != null) {
      print('new task has been added $title');
      _tasks.add(Task(name: title));
      notifyListeners();
    }
  }

  String getTaskTitle(int index) {
    if (index < _tasks.length) {
      return _tasks[index].name;
    }
    return '';
  }

  bool isTaskDone(int index) {
    if (index < _tasks.length) {
      return _tasks[index].isDone;
    }
    return false;
  }

  void toggleTaskState(int index) {
    if (index < _tasks.length) {
      _tasks[index].isDone = !_tasks[index].isDone;
      notifyListeners();
    }
  }

  void removeTask(Task removingTask) {
    _tasks.remove(removingTask);
    notifyListeners();
  }
}
