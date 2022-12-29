import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/constant/constant.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/screen/add_task_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 36.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 80.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: kHomeTitleTextStyle,
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: kHomeDescTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: TaskListCreate(
                tasks: Provider.of<TaskData>(context).tasks,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
