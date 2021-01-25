
import 'package:flutter/material.dart';


class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    Key key,
    @required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          unselectedWidgetColor: Colors.transparent,
        ),
        child: Checkbox(
          value: isChecked,
          onChanged: null,
          activeColor: Colors.transparent,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),
    ),
      ),
    ),
    );
  }
}