import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/todo_notifier.dart';
import 'package:todo_app/theme/todo_theme.dart';
import 'package:todo_app/screens/todolist.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TodoNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: TodoTheme.darkTheme,
        home: const TodoList(),
      ),
    );
  }
}


//^ Steps to add Provider state management
//? 1. Install Provider
//? 2. Create a change notifier 'todo_notifier' file '{} extends ChangeNotifier'
//? 3. Declare at root widget (Wrap MaterialApp with ChangeNotifierProvider)
//? 4. Access the providers states and methods 
//?    Provider.of<TodoNotifier>(context, listen: false).addTodo(titleController.text);
//? 5. Add Consumer to consume a Provider
//?    Consumer<TodoNotifier>(builder: {return Listview()})
