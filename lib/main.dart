import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/theme_notifier.dart';
import 'package:todo_app/notifier/todo_notifier.dart';
import 'package:todo_app/theme/todo_theme.dart';
import 'package:todo_app/screens/todolist.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoNotifier()),
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
      ],
      child: Consumer(
        builder: (BuildContext context, ThemeNotifier notifier, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: notifier.getMode() ? TodoTheme.darkTheme : ThemeData.light(),
            home: const TodoList(),
          );
        },
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
