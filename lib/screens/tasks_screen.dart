import 'package:flutter/material.dart';

import 'package:todo/models/task_data.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:todo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(

        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) =>
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery
                            .of(context)
                            .viewInsets
                            .bottom,
                      ),
                      child: AddTask((newTaskTitle) async {
                        //setState(() {
                          //tasks.add(Task(name: newTaskTitle));
                         // Navigator.pop(context);
                        //});
                      })
                  ),
                ),
          );
        },

        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
        ),


      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 20.0,
          right: 20.0,
          bottom: 80.0,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,

                ),
                SizedBox(width: 20.0),
                Text(
                  'ToDo Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),

                ),


              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} tasks',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,

              ),

            ),
            const SizedBox(height: 20,),
            Expanded(

              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                child: const TasksList(),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
