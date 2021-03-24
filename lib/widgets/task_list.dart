import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding:
              EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0, bottom: 15.0),
          itemBuilder: (context, index) {
            return TaskTile(
              name: taskData.getTaskTitle(index),
              checked: taskData.isTaskDone(index),
              onChanged: (newValue) {
                taskData.toggleTaskState(index);
              },
              onLongPressed: () {
                taskData.removeTaskAt(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
