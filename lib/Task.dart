import 'package:flutter/material.dart';

class Task {
  final title;
  bool isDone;
  Color tileColor = Color(0xFF292E3C);
  Task({this.title, this.isDone = false,this.tileColor});

 void toggleDone(){
   isDone = !isDone;
 }
 
}