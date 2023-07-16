// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todaydo_app/scraen/add_task_screen.dart';
import 'package:provider/provider.dart';

import '../models/task_date.dart';
import '../widget/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[400],
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTasktitle) {
                        // setState(() {
                        //   Navigator.of(context).pop();
                        //   tasks.add(Task(name: newTasktitle));
                        // });
                      })
                      )
                      )
                      );
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              // ignore: prefer_const_constructors
              Icon(
                Icons.playlist_add_check,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "ToDayDo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "${Provider.of<TaskData>(context).tasks.length} Task ",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Taskslist(),
            ),
          )
        ]),
      ),
    );
  }
}
