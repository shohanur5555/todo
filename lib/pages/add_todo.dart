import 'package:dart_practice_project/models/save_tast.dart';
import 'package:dart_practice_project/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                onPressed: (){
                  context.read<SaveTast>().addTask(
                    Task(title: controller.text,
                      isComplete: false,),

                  );
                  controller.clear();
                  Navigator.of(context).pop();
                },
                child: const Text('Add'))
          ],
      ),),
    );
  }
}
