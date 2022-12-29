import 'package:flutter/material.dart';
import 'package:todoey/constant/constant.dart';

class SingleTaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) onChanged;

  const SingleTaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
      child: SizedBox(
        height: 42.0,
        child: ListTile(
          leading: Text(
            taskTitle,
            style: isChecked
                ? kTileTextStyle.copyWith(
                    decoration: TextDecoration.lineThrough)
                : kTileTextStyle,
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: onChanged,
          ),
          dense: true,
        ),
      ),
    );
  }
}
