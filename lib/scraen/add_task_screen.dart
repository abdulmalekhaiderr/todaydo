import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_date.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskcallback;

  AddTaskScreen(this.addtaskcallback);
  @override
  Widget build(BuildContext context) {
    String? newTasktitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "add task ",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
        TextField(
          onChanged: (newText) {
            newTasktitle = newText;
          },
          autofocus: true,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal[400],
            ),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTasktitle!);

              Navigator.pop(context);
            },
            child: Text("add"))
      ]),
    );
  }
}
