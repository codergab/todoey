import 'package:flutter/material.dart';

class Task {
  final String name;
  bool isCompleted = false;

  Task({this.name, this.isCompleted});

  void toggleDone() {
    isCompleted = !isCompleted;
  }
}
