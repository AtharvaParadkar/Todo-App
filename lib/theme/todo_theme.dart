import 'package:flutter/material.dart';

class TodoTheme {
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor:
            const Color.fromARGB(255, 106, 90, 205),
        brightness: Brightness.dark,
        primary: const Color.fromARGB(255, 106, 90, 205),
        secondary: const Color.fromARGB(255, 75, 0, 130),
        surface: const Color.fromARGB(255, 30, 30, 44),
        error: const Color.fromARGB(255, 207, 102, 121),
      ),
      scaffoldBackgroundColor:
          const Color.fromARGB(255, 18, 18, 33),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 30, 30, 44),
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
        backgroundColor: Color.fromARGB(255, 106, 90, 205),
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
          backgroundColor: const Color.fromARGB(255, 106, 90, 205),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color.fromARGB(255, 30, 30, 44),
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
            color: Color.fromARGB(255, 106, 90, 205),
            width: 2,
          ),
        ),
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor:
            const Color.fromARGB(255, 106, 90, 205),
        brightness: Brightness.light,
        primary: const Color.fromARGB(255, 106, 90, 205),
        secondary: const Color.fromARGB(255, 75, 0, 130),
        surface: Colors.white,
        error: const Color.fromARGB(255, 176, 0, 32),
      ),
      scaffoldBackgroundColor:
          const Color.fromARGB(255, 245, 245, 245),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black, // Dark text for contrast
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: Colors.black), // Dark icons
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.black.withOpacity(0.87)),
        bodyMedium: TextStyle(color: Colors.black.withOpacity(0.75)),
        titleLarge: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 106, 90, 205),
        foregroundColor: Colors.white,
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 106, 90, 205),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color.fromARGB(255, 240, 240, 240),
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
            color: Color.fromARGB(255, 106, 90, 205),
            width: 2,
          ),
        ),
        labelStyle: const TextStyle(color: Colors.black54),
        hintStyle: const TextStyle(color: Colors.black38),
      ),
      // Optional: Adjust icon themes for light mode
      iconTheme: const IconThemeData(color: Colors.black),
      // Optional: Adjust drawer theme if using a Drawer
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
      ),
    );
  }
}
