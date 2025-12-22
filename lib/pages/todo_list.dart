import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  static const String routeName = '/';
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/add-todo-screen');
          },
        child: Icon(Icons.add),

      ),
    );
  }
}
