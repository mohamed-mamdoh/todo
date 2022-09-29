import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task>tasks=[
    Task(name: 'go shopping'),
    Task(name: 'go shopping'),
    Task(name: 'go gym'),
    Task(name: 'repair the car '),
  ];
  void addTasks(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();

  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();

  }

}