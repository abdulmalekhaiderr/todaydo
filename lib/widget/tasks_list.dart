import 'package:flutter/material.dart';
import 'package:todaydo_app/widget/tasks_tile.dart';

import 'package:provider/provider.dart';
import '../models/task_date.dart';

class Taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: ((context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TasksTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxchange: (newValue) {
                taskData.updataTask(taskData.tasks[index]);
              },
              listTitldelete: () {
                taskData.deletetask(taskData.tasks[index]);
              },
            );
          });
    }));

    // return ListView(
    //   children: [
    //     TasksTile(
    //       taskTitle: tasks[0].name,
    //       isChecked: tasks[0].isDone,
    //     ),
    //     TasksTile(
    //       taskTitle: tasks[1].name,
    //       isChecked: tasks[1].isDone,
    //     ),
    //     TasksTile(
    //       taskTitle: tasks[2].name,
    //       isChecked: tasks[2].isDone,
    //     ),
    //   ],
    // );
  }
}
