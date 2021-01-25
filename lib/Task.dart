

class Task {
  final title;
  bool isDone;
  Task({this.title, this.isDone = false});

 void toggleDone(){
   isDone = !isDone;
 }
}