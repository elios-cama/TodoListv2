import 'package:flutter/material.dart';

class Task {
  final title;
  bool isDone;
  final taskDate; 
  Color tileColor = Color(0xFF292E3C);
  Task({this.title, this.isDone = false,this.tileColor, this.taskDate});

 void toggleDone(){
   isDone = !isDone;
 }
 
}