import 'package:flutter/material.dart';

class Errorpage extends StatelessWidget {
  const Errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error Page'),),
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      body: const Center(
        child: Text("Error Page not found Wrong URL"),
      ),
    );
  }
}
