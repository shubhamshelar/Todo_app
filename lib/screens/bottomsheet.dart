import 'package:flutter/material.dart';

import '../utility/task.dart';

class BottomSheetk extends StatelessWidget {
  //final List<Task> TaskList;
  final Function addTask;
  final myController = TextEditingController();
  BottomSheetk({required this.addTask});
  @override
  void dispose() {
    myController.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 500,
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          //borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          color: Color(0xFF757575),
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                const Text(
                  'Add Task',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  controller: myController,
                  onSubmitted: (String a) {
                    addTask(Task(task_name: myController.text, isDone: false));
                  },
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: const Text('Add'),
                    onPressed: () {
                      addTask(
                          Task(task_name: myController.text, isDone: false));
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
