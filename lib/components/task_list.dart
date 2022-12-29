import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/single_task_tile.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';

class TaskListCreate extends StatelessWidget {
  TaskListCreate({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return tasks.isNotEmpty
        ? ListView.builder(
            itemBuilder: (context, index) {
              return SingleTaskTile(
                  taskTitle: tasks[index].taskName,
                  isChecked: tasks[index].isDone,
                  onChanged: (newValue) {
                    Provider.of<TaskData>(context, listen: false)
                        .toggleTask(tasks[index]);
                  });
            },
            itemCount: tasks.length,
          )
        : Container();
  }
}
