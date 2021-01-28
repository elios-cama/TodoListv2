import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _textController = TextEditingController();
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  String chosenDate;
  @override
  Widget build(BuildContext context) {
    //String newTaskTitle;
    //DateTime _chosenDateTime;
    //DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    //String formatedDate;

    // void _showDatePicker(ctx) {

    //   showCupertinoModalPopup(
    //       context: ctx,
    //       builder: (_) => Container(
    //             height: 500,
    //             color: Color.fromARGB(255, 255, 255, 255),
    //             child: Column(
    //               children: [
    //                 Container(
    //                   height: 400,
    //                   child: CupertinoDatePicker(
    //                       initialDateTime: DateTime.now(),
    //                       onDateTimeChanged: (val) {
    //                         // setState(() {
    //                         //   _chosenDateTime = val;
    //                         // });
    //                         _chosenDateTime = val;
    //                         formatedDate = dateFormat.format(_chosenDateTime);
    //                         // print('this is the selected date $formatedDate');
    //                         // print(_chosenDateTime);
    //                       }),
    //                 ),

    //                 // Close the modal
    //                 CupertinoButton(
    //                   child: Text('OK'),
    //                   onPressed: () => Navigator.of(ctx).pop(),
    //                 )
    //               ],
    //             ),
    //           ));
    // }
    Future<String> _showDatePicker(ctx) async {
      var formatedDate = DateTime.now();
      return showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
          height: 500,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Container(
                height: 400,
                child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (val) {
                      formatedDate = val;
                    }),
              ),

              // Close the modal
              CupertinoButton(
                child: Text('OK'),

                // Return the formatted date here
                onPressed: () =>
                    Navigator.of(ctx).pop(dateFormat.format(formatedDate)),
              )
            ],
          ),
        ),
      );
    }

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
            // TextField(
            //   decoration: InputDecoration(
            //     border: InputBorder.none,
            //   ),
            //   style: TextStyle(color: Colors.white),
            //   autofocus: true,
            //   textAlign: TextAlign.center,
            //   onChanged: (newText) {
            //     newTaskTitle = newText;
            //   },
            // ),
            TextField(
              // Use the _textController here
              controller: _textController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
              autofocus: true,
              textAlign: TextAlign.center,
            ),

            // Container(
            //   child: CupertinoButton(
            //     padding: EdgeInsetsDirectional.zero,
            //     child: Text('Select a date'),
            //     onPressed: () => _showDatePicker(context),
            //   ),
            // ),
            Container(
              child: CupertinoButton(
                padding: EdgeInsetsDirectional.zero,
                child: Text('Select a date'),
                onPressed: () async {
                  // Wait for the return value
                  chosenDate = await _showDatePicker(context);
                },
              ),
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
                //print('newtasktile est $newTaskTitle et formateddate est$formatedDate');
                Provider.of<TaskData>(context, listen: false)
                    .addTask(_textController.text, chosenDate);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
