import 'dart:ffi';

class Task {
  String? task_name;
  bool isDone;
  Task({this.task_name, this.isDone = false});
  void toggle() {
    isDone = !isDone;
  }
}
