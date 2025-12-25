import 'package:dart_practice_project/models/task_model.dart';
import 'package:flutter/material.dart';

class SaveTast extends ChangeNotifier{
  List<Task> _task = [
    Task(title: 'Learn Flutter'),
    Task(title: 'Drink Water'),
  ];

  List<Task> get task => _task;


}