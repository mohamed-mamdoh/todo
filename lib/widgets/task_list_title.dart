
import 'package:flutter/material.dart';

class TaskListTitle extends StatelessWidget {
 final bool isChecked;
 final String taskTitle;
  final void Function(bool?)checkboxChange;
 final void Function()listTileDelete;

  TaskListTitle({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxChange,
    required this.listTileDelete,
  });



@override
  Widget build(BuildContext context) {

    return  ListTile(
        title:  Text(
          taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough:null,
          fontSize: 20,
          fontWeight: FontWeight.bold,

    ),
    ),

      trailing:Checkbox(
        activeColor: Colors.teal[400],
        value:isChecked,
       onChanged: checkboxChange,
       // onChanged:checkboxChange,
      ),
      onLongPress:listTileDelete ,
    );


  }
}


