import 'package:flutter/material.dart';
import 'package:todo_app/utils/dialog_box.dart';
import 'package:todo_app/utils/todo_item.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  final List todos = [
    ["Todo 1", false],
    ["Todo 2", false],
    ["Todo 3", false],
    ["Todo 4", true],
    ["Todo 5", false],
  ];

  void createNewTodo(){
    showDialog(context: context, builder: (context){
      return DialogBox();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("Todo App", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2)),
        backgroundColor: Colors.deepPurple[400],
        elevation: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          createNewTodo();
        },
        backgroundColor: Colors.deepPurple[300],
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){
          return TodoItem(
            todoText: todos[index][0],
            isChecked: todos[index][1],
            onChanged: (value) => setState(() => todos[index][1] = value!),
          );
        }
      )
    );
  }
}