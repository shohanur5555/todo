import 'package:dart_practice_project/models/save_tast.dart';
import 'package:dart_practice_project/pages/add_todo.dart';
import 'package:dart_practice_project/pages/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
   ChangeNotifierProvider(
       create: (context) => SaveTast(),
       child: const MyApp()),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/' : (_) => const TodoList(),
        '/add-todo-screen' : (_) => AddTodo(),
      },
    );

  }

}

