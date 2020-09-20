import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function deleteTask;

  TaskTile(
      {this.isChecked, this.taskTitle, this.checkBoxCallback, this.deleteTask});

  // void checkBoxCallback(bool checkBoxState) {
  //   // setState(() {
  //   //   isChecked = checkBoxState;
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
