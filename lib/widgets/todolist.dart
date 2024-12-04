import 'package:flutter/material.dart';
import 'package:todo_app/modal/todomodal.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<Todo> _todoList = [
    Todo(
      title: 'title',
      description: 'description',
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _todoList.length,
          itemBuilder: (ctx,i)=>ListTile(
            title: Text(_todoList[i].title),
            subtitle: Text(_todoList[i].description),
            trailing: Text(_todoList[i].formattedDate),
          ),
        ),
      ),
    );
  }
}
