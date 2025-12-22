import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  static const String routeName = '/add=-todo-screen';
   AddTodo({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                hint: Text('title'),
              ),
            ),
            ElevatedButton(
                onPressed: (){}, 
                child: const Text('Add'))
          ],
      ),),
    );
  }
}
