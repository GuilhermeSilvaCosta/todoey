import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) { 
        return ListView.builder(
          padding: const EdgeInsets.only(top: 24.0),
          itemBuilder: (context, index) =>
            TaskTile(
              title: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              onChanged: (bool? value) {
                Provider.of<TaskData>(context, listen: false).toogleDone(index);
              },
            ),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}