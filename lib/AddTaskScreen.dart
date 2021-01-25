import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color : Colors.white,
      ),
      child: Container(
        decoration: BoxDecoration(
          color : Colors.purple
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('ieubczuba')
        ],
        ),
      ),
    );
  }
}