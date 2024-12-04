import 'package:flutter/material.dart';

class TodoNotifier extends ChangeNotifier{
  final List<String> _todoList=[];

  List<String> getAllTodo()=>_todoList;

  void addTodo(String todoDescription){
    _todoList.add(todoDescription);
    notifyListeners();
  }

  void deleteTodo(int index){
    _todoList.removeAt(index);
    notifyListeners();
  }
}