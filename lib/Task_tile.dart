import 'package:TodoList/task_data.dart';
import 'package:flutter/material.dart';
import 'my_check_box.dart';

class TaskTile extends StatefulWidget {
  final bool isChecked; 
  final String title;
  final String formatedDate;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskTile({this.isChecked, this.title, this.checkboxCallback, this.longPressCallback, this.formatedDate});
  

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
          child: ClipRRect(
             clipBehavior: Clip.hardEdge,
             borderRadius: BorderRadius.all(Radius.circular(5)),
             child: SizedBox(
                width: Checkbox.width,
                height: Checkbox.width,
              child: Container(
                decoration: new BoxDecoration(
                  border: Border.all(
                  width: 1,
                  ),
                borderRadius: new BorderRadius.circular(5),
                ),
               child: Theme(
              data: ThemeData(
                unselectedWidgetColor: Color(0xFF292E3C),
              ),
             child: Checkbox(
              value: widget.isChecked,
              onChanged: widget.checkboxCallback,
              activeColor: Color(0xFF65FFA7),
              materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
                  ),
              ),
            ),
           ),
          ),
          SizedBox(width : 10),
          Expanded(
              child: GestureDetector(
                onLongPress: widget.longPressCallback,
                child: Container(
                
                height: 50,
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.circular(15),
                  color: widget.isChecked ? Color(0xFF2765f9) : Color(0xFF292E3C),
                ),
                child: Row(
                  children: [
                    Text(
                      widget.title != null?widget.title:'',
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.formatedDate??'',
                      
                        style: TextStyle(color: Colors.white, fontSize: 20)

                      )
                  ],
                ),
            ),
              ),
          ),
        ],
      ),
    );
  }
}

