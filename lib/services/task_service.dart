import 'dart:convert';

import 'package:meuprojeto/models/task_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskService {
  Future<void> saveTask(String title, String description) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> tasks = prefs.getStringList('tasks') ?? [];
    Task newTask = Task(title: title, description: description);
    tasks.add(jsonEncode(newTask.toJson()));
    await prefs.setStringList('tasks', tasks);

    getTasks() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> tasksStrings = prefs.getStringList('tasks') ?? [];
      List<Task> tasks = tasksStrings
          .map((taskJson) => Task.fromJson(jsonDecode(taskJson)))
          .toList();  
      return tasks;
    }
  }
}