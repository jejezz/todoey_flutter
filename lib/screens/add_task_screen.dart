import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kRoundedCornerDecoration,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 20.0,
                ),
                onChanged: (newValue) {
                  taskTitle = newValue;
                },
              ),
              Container(
                color: Colors.lightBlueAccent,
                height: 5.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  context.read<TaskData>().addNewTask(taskTitle);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.lightBlueAccent,
                  elevation: 5,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                child: Text(
                  'Add',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
