import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/filter_notifier.dart';
import 'package:todo_app/notifier/theme_notifier.dart';
import 'package:todo_app/notifier/todo_notifier.dart';
import 'package:todo_app/screens/new_todo.dart';

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
        leading: PopupMenuButton(
          onSelected: (String filter) {
            Provider.of<FilterNotifier>(context, listen: false)
                .updateFilter(filter);
          },
          itemBuilder: (context) => ['All', 'Completed', 'Pending']
              .map((filter) => PopupMenuItem<String>(
                    value: filter,
                    child: Text(filter),
                  ))
              .toList(),
          icon: const Icon(Icons.filter_list),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Provider.of<ThemeNotifier>(context, listen: false).setMode(),
            icon: Provider.of<ThemeNotifier>(context, listen: false).getMode()
                ? const Icon(Icons.nightlight_round_sharp)
                : const Icon(Icons.light_mode_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Consumer2<TodoNotifier, FilterNotifier>(
          builder: (BuildContext context, TodoNotifier notifier,
              FilterNotifier f, Widget? child) {
            List<String> todoList = notifier.getAllTodo();
            if (f.filter == 'Completed') {
            } else if (f.filter == 'Pending') {}
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
        elevation: 1,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewTodo())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
