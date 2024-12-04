import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/todo_notifier.dart';

class NewTodo extends StatelessWidget {
  const NewTodo({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final titleController = TextEditingController();

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
                controller: titleController,
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState != null ||
                      formKey.currentState!.validate()) {
                    Provider.of<TodoNotifier>(context, listen: false)
                        .addTodo(titleController.text);
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Item'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
