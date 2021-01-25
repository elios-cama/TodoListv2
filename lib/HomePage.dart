import 'package:flutter/material.dart';
import 'Task_list.dart';
import 'AddTaskScreen.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image : DecorationImage(
          image: AssetImage("lib/assets/gradient.png"),
          fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'lib/assets/photomdb.jpg', 
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  ),
                
              ),
            )
          ],
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("Today's schedule", style: TextStyle(fontSize: 37, fontWeight : FontWeight.bold, color : Colors.white)),
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: TaskList(),
                ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children : <Widget>[
                Icon(Icons.house, color: Colors.white, size: 45,),
                FlatButton(
                  onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SingleChildScrollView(
                      child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )
                    )
                    );
                    },
                    child: CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.add, color: Colors.white,size: 35),
                    backgroundColor: Colors.purple.shade400,
                    ),
                ),
                Icon(Icons.settings, color: Colors.white,size: 45)
              ]
            ),
          )
  ),
      ),
    );
  }
}