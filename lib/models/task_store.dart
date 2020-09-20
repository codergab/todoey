import 'package:flutter/foundation.dart';
import './task.dart';

class TaskStore extends ChangeNotifier {
  List<Task> _tasks = [];

  int get tasksCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return [..._tasks];
  }

  void addTask(String name, {bool isCompleted = false}) {
    final newTask = Task(name: name, isCompleted: isCompleted);
    _tasks.add(newTask);
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
