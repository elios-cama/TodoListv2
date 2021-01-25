import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff000014),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xFF282D3A),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.purple.shade400,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.purple.shade400,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
