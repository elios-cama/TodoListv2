import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        cursorColor: Colors.purple.shade400,
        ),
        home: HomePage(),
      ),
      );
  }
}