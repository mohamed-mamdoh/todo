import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/task_list_title.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget{
  const TasksList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemCount:taskData.tasks.length,
          itemBuilder: (context,index){
            return TaskListTitle(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxChange:(newValue) {
                taskData.updateTask(taskData.tasks[index]);

              },
              listTileDelete: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
            );

          },

        );

      },

    );
      
  }
}
