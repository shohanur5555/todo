import 'package:dart_practice_project/models/save_tast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  static const String routeName = '/';

  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      body: Consumer<SaveTast>(
        builder: (context, task, _) {
          return ListView.builder(
            itemCount: (task.tasks.length),
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(
                  task.tasks[index].title,
                  style: TextStyle(
                    decoration: task.tasks[index].isComplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                trailing: Wrap(
                  children: [Checkbox(
                    value: task.tasks[index].isComplete,
                    onChanged: (_) {
                      context.read<SaveTast>().checkTask(index);
                    },
                  ),
                    IconButton(
                        onPressed: (){
                          context.read<SaveTast>().removeTask(task.tasks[index],);
                        },
                        icon: Icon(Icons.delete))
                  ]
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-todo-screen');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
