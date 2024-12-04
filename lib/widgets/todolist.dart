import 'package:flutter/material.dart';
import 'package:todo_app/modal/todomodal.dart';
import 'package:todo_app/widgets/new_todo.dart';

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
          itemBuilder: (ctx, i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Card(
              elevation: 2,
              color: const Color.fromARGB(255, 35, 40, 45),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _todoList[i].title,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _todoList[i].description,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 35, 40, 45),
        elevation: 1,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => const NewTodo(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
