import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Todo {
  final String id,title, description;

  Todo({required this.id, required this.title, required this.description});

}
