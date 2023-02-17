import 'package:flutter/material.dart';

import '../utility/task.dart';
import '../utility/tasklist.dart';
import '../screens/bottomsheet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> TaskList = [];
  void addTask(Task k) {
    setState(() {
      TaskList.add(k);
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(Icons.list,
                          color: Colors.lightBlueAccent, size: 30.0),
                    ),
                  ),
                  const Text("Todoey",
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                  Text("${TaskList.length} Tasks",
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: tasklist(
                    TaskList: TaskList,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                  child: BottomSheetk(
                addTask: addTask,
              ));
            },
          );
        },
        //shape: ,
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
