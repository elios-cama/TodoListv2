import 'package:flutter/material.dart';
import 'my_check_box.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked; 
  final String title;
  TaskTile({this.isChecked, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyCheckBox(isChecked: isChecked),
          SizedBox(width : 10),
          Expanded(
              child: Container(
              
              height: 50,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(15),
                color: Color(0xFF292E3C)
              ),
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

