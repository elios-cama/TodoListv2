import 'package:TodoList/task_data.dart';
import 'package:flutter/material.dart';
import 'task_data.dart';
import 'package:provider/provider.dart';
import 'Task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (context, taskData, child){
          return ListView.builder(
            itemBuilder: (context, index){
              final task = taskData.tasks[index];
              return TaskTile(
                  title: task.title,
                  isChecked: task.isDone,
                  checkboxCallback: (checkboxState){
                    taskData.updateTask(task);} ,
                  longPressCallback: (){
                    taskData.deleteTask(task);
                  },  
                                  

                );
            },
            itemCount: taskData.taskCount,
            );
        }
    );
  }
}