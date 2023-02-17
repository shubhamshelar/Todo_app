import 'package:flutter/material.dart';
import 'package:todoey/utility/task.dart';
import 'package:todoey/utility/tasktile.dart';

class tasklist extends StatefulWidget {
  final List<Task> TaskList;

  tasklist({required this.TaskList});

  @override
  State<tasklist> createState() => _tasklistState();
}

class _tasklistState extends State<tasklist> {
  void toggleI(int index) {
    setState(() {
      widget.TaskList[index].toggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            title: widget.TaskList[index].task_name,
            isChecked: widget.TaskList[index].isDone,
            toggle: () {
              toggleI(index);
            },
            //
          );
        },
        itemCount: widget.TaskList.isNotEmpty ? widget.TaskList.length : 0);
  }
}
