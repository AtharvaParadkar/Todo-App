import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/notifier/todo_notifier.dart';

class NewTodo extends StatelessWidget {
  NewTodo({super.key, this.todo, this.index}) {
    if (todo != null) {
      titleController.text = todo!;
    }
  }

  final String? todo;
  final int? index;
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo != null ? "Edit Todo" : "Add Todo"),
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
                decoration: InputDecoration(
                  label: const Text('Title'),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 30, 30, 44)),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red),
                  ),
                ),
                validator: (String? value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return "You need to type in box";
                  }
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState != null ||
                      formKey.currentState!.validate()) {
                    if (index == null) {
                      Provider.of<TodoNotifier>(context, listen: false)
                          .addTodo(titleController.text);
                    } else {
                      Provider.of<TodoNotifier>(context, listen: false)
                          .editTodo(index!, titleController.text);
                    }
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
