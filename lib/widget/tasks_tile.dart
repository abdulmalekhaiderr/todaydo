// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  final void Function(bool?) checkboxchange;
  final void Function() listTitldelete;
  TasksTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxchange,
      required this.listTitldelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxchange,
      ),
      onLongPress: listTitldelete,
      //onChanged: functionw,
    );
  }
}
