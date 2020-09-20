import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_store.dart';

class AddTaskScreen extends StatelessWidget {
  String newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add new Task',
                style: TextStyle(fontSize: 22),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: Colors.grey[100]),
                child: TextField(
                  onChanged: (value) {
                    newTask = value;
                  },
                  autofocus: true,
                  style: TextStyle(fontSize: 20),
                  cursorColor: Colors.blueAccent,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        color: Colors.blueAccent,
                        onPressed: () {
                          Provider.of<TaskStore>(context).addTask(newTask);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    FlatButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
