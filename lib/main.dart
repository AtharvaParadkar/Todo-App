import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todolist.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor:
              const Color(0xFF6A5ACD), // Slate blue as the primary seed color
          brightness: Brightness.dark,
          primary: const Color(0xFF6A5ACD), // Slate blue
          secondary: const Color(0xFF4B0082), // Indigo
          surface: const Color(0xFF1E1E2C), // Deep dark blue-gray
          error: const Color(0xFFCF6679), // Soft red for error states
        ),
        scaffoldBackgroundColor:
            const Color(0xFF121221), // Matches background for cohesiveness
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E2C),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white.withOpacity(0.87)),
          bodyMedium: TextStyle(color: Colors.white.withOpacity(0.75)),
          titleLarge: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF6A5ACD),
          foregroundColor: Colors.white,
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF1E1E2C),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6A5ACD),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF1E1E2C),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFF6A5ACD),
              width: 2,
            ),
          ),
        ),
      ),
      home: const TodoList(),
    );
  }
}
