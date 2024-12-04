import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Todo {
  final String title, description;
  final DateTime date;

  Todo({required this.title, required this.description, required this.date});

  String get formattedDate {
    return formatter.format(date);
  }
}
