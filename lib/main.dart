import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/models/task_store.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String data = 'Top Secret Data';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskStore>(
      builder: (context) => TaskStore(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
