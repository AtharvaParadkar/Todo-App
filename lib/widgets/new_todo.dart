import 'package:flutter/material.dart';
import 'package:todo_app/modal/todomodal.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({super.key});

  @override
  State<NewTodo> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    var enteredTitle = '';
    var enteredDescription = '';

    void saveTodo() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        Navigator.of(context).pop(
          Todo(
            title: enteredTitle,
            description: enteredDescription,
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
                onSaved: (value) {
                  enteredTitle = value!;
                },
              ),
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Description'),
                ),
                onSaved: (value) {
                  enteredDescription = value!;
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      formKey.currentState!.reset();
                    },
                    child: const Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: saveTodo,
                    child: const Text('Add Item'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
