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
    
    DateTime? selectedDate;

    void presentDatePicker() async {
      final now = DateTime.now(),
          lastDate = DateTime(now.year + 5, now.month, now.day);

      final pickedDate = await showDatePicker(
        context: context,
        firstDate: now,
        lastDate: lastDate,
        initialDate: now,
      );

      setState(() {
        selectedDate = pickedDate;
      });
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
                onSaved: (value) {},
              ),
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Description'),
                ),
                onSaved: (value) {},
              ),
              Row(
                children: [
                  Text(
                    selectedDate == null
                        ? 'No Date Selected'
                        : formatter.format(selectedDate!),
                  ),
                  IconButton(
                    onPressed: presentDatePicker,
                    icon: const Icon(Icons.calendar_month_outlined),
                  ),
                ],
              ),
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
                    onPressed: (){},
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
