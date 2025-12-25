import 'package:dart_practice_project/models/task_model.dart';
import 'package:flutter/material.dart';

class SaveTast extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'Learn Flutter', isComplete: false),
    Task(title: 'Drink Water', isComplete: false),
  ];

  List<Task> get tasks => _tasks;

  void addTask (Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void checkTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }


}