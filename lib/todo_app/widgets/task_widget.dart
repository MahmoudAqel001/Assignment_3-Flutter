import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function Delete;
  Task task;
  TaskWidget(this.task, this.fun,this.Delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        secondary: IconButton(
          icon: Icon(Icons.delete),
          color:Colors.red,
          onPressed: (){
             Delete(task);
          },
        ),
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}
