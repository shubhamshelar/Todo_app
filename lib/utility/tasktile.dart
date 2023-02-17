import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  String? title;

  final Function toggle;
  TaskTile(
      {super.key,
      required this.title,
      required this.isChecked,
      required this.toggle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool? v) {
          //print("a");
          toggle();
        },
      ),
    );
  }
}
