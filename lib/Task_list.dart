import 'package:TodoList/task_data.dart';
import 'package:flutter/material.dart';
import 'task_data.dart';
import 'package:provider/provider.dart';
import 'Task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                  child: StreamBuilder<Map<String, dynamic>>(
                initialData: {},
                stream: Provider.of<TaskData>(context).taskStream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return Container();
                  return Column(
                    children: [
                      
                      Text(
                          '${snapshot.data['title']} | ${snapshot.data['date']}', style: TextStyle(color: Colors.white,)),
                    ],
                  );
                },
              ));
    // return Consumer<TaskData>(
    //     builder: (context, taskData, child){
    //       return ListView.builder(
    //         itemBuilder: (context, index){
    //           final task = taskData.tasks[index];
    //           return TaskTile(
    //               title: task.title,
    //               isChecked: task.isDone,
    //               formatedDate: task.taskDate,
    //               checkboxCallback: (checkboxState){
    //                 taskData.updateTask(task);} ,
    //               longPressCallback: (){
    //                 taskData.deleteTask(task);
    //               },  
                                  

    //             );
    //         },
    //         itemCount: taskData.taskCount,
    //         );
    //     }
    // );
  }
}