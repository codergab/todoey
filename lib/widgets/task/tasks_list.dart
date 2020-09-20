import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/models/task_store.dart';
import 'package:todoey/widgets/task/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskStore>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData.tasksCount,
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isCompleted,
            checkBoxCallback: (_) {
              Provider.of<TaskStore>(context).updateTask(task);
            },
            deleteTask: () {
              Provider.of<TaskStore>(context).deleteTask(task);
            },
          );
        },
      ),
    );
  }
}
