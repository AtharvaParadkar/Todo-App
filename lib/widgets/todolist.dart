import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/todo_notifier.dart';
import 'package:todo_app/widgets/new_todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Consumer<TodoNotifier>(
          builder:
              (BuildContext context, TodoNotifier notifier, Widget? child) {
            List<String> todoList = notifier.getAllTodo();
            return todoList.isEmpty
                ? const Center(
                    child: Text('No Todos to Show',
                        style: TextStyle(fontSize: 18)),
                  )
                : ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(todoList[index].toString()),
                        trailing: IconButton(
                          onPressed: () {
                            notifier.deleteTodo(index);
                            const snack = SnackBar(
                              content: Center(
                                child: Text('Todo Deleted'),
                              ),
                              backgroundColor: Color.fromARGB(255, 255, 0, 0),
                              shape: StadiumBorder(),
                              duration: Duration(seconds: 3),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snack);
                          },
                          icon: const Icon(Icons.delete_forever_outlined),
                        ),
                        leading: IconButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewTodo(
                                todo: todoList.elementAt(index),
                                index: index,
                              ),
                            ),
                          ),
                          icon: const Icon(Icons.edit_note_outlined),
                        ),
                      ),
                    ),
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 35, 40, 45),
        elevation: 1,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewTodo())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
