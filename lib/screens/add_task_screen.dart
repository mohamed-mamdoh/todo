import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
class AddTask extends StatelessWidget {
  String? newTaskTitle;
  final Function addTaskCallBack;
  AddTask(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          const Text(

            'Add Task',
        textAlign:TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.blueAccent,

            )

          ),
           TextField(
            autofocus:true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle=newText;
            },
          ),
          const SizedBox(height: 30,),
          TextButton(
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addTasks(newTaskTitle!);
                Navigator.pop(context);
              },
            style: TextButton.styleFrom(
              backgroundColor:Colors.teal[400],
              primary: Colors.white,
            ),
              child: const Text('Add'),
          ),
        ],
      ),

    );
  }
}
