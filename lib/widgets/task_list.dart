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
          itemBuilder: (context, index) {
            return TaskTile(
              name: taskData.getTaskTitle(index),
              checked: taskData.isTaskDone(index),
              onChanged: (newValue) {
                taskData.toggleTaskState(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
