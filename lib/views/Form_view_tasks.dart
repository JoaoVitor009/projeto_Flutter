import 'package:flutter/material.dart';
import 'package:meuprojeto/services/task_service.dart';

class FormTasks extends StatefulWidget {
  const FormTasks({super.key});

  @override
  State<FormTasks> createState() => _FormTasksState();
}

class _FormTasksState extends State<FormTasks> {
  final _formKey = GlobalKey<FormState>();
  final TaskService taskService = TaskService();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar tarefa'),
),
body: Form (
  key: _formKey,
  child: Column(
    children: [
      Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _titleController,
        decoration: InputDecoration(
          label:Text('Titulo da tarefa'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)))),
      ),

      Padding(padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _descriptionController,
        validator: (value){
          if(value == null||value.isEmpty){
            return '*Titulo não preenchido!';
          }
          return null;
        },
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        maxLength: null,
        decoration: InputDecoration(
          label: Text('Descrição da tarefa'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )))),
          ElevatedButton(onPressed: () async{
            if(_formKey.currentState!.validate()){}
              String title = _titleController.text;
              String description = _descriptionController.text;
              await taskService.saveTask(title, description);
          }, 
          child: Text('Salvar Tarefas'))
          ],

    )));
  }
}