import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/todo_notifier.dart';
import 'package:todo_app/theme/todo_theme.dart';
import 'package:todo_app/widgets/todolist.dart';

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
