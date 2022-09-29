import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';

import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),

      child:  MaterialApp(
        home: TasksScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

  }
}


