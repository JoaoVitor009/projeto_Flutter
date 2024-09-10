import 'package:flutter/material.dart';

class ListViewTasks extends StatefulWidget {
  const ListViewTasks({super.key});

  @override
  State<ListViewTasks> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListViewTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas')
      ),
      body:
      //Alinhar os cards
      Column(
        children: [
          Card(
            color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.all(10), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Meu Título',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                    Radio(
                      value: false, groupValue: false, onChanged: (value) {})
                ],
              ),
              Text('Descrição 1',
                style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        )),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ))
                    ],
                  )
            ],
          ))),
          Card(
            color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.all(10), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Meu Título',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                    Radio(
                      value: false, groupValue: false, onChanged: (value) {})
                ],
              ),
              Text('Descrição 2',
                style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        )),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ))
                    ],
                  )
            ],
          )))
        ],
      ));
  }
}