import 'package:flutter/material.dart';
import 'package:todo_app/modal/todomodal.dart';

class NewTodo extends StatelessWidget {
  const NewTodo({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final titleController = TextEditingController(),
        descriptionController = TextEditingController();
    // var enteredTitle = '';
    // var enteredDescription = '';

    void saveTodo() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        Navigator.of(context).pop(
          Todo(
            id: DateTime.now().toString(),
            title: titleController.text,
            description: descriptionController.text,
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
                controller: titleController,
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
                // onSaved: (value) {
                //   enteredTitle = value!;
                // },
              ),
              TextFormField(
                maxLength: 50,
                controller: descriptionController,
                decoration: const InputDecoration(
                  label: Text('Description'),
                ),
                // onSaved: (value) {
                //   enteredDescription = value!;
                // },
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
