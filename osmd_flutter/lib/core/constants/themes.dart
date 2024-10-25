import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: TextStyle(fontSize: 24),
    titleMedium: TextStyle(fontSize: 16),
  ),
  appBarTheme:
      AppBarTheme(backgroundColor: Colors.brown, foregroundColor: Colors.white),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.brown,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.white54),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed),
);

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  textTheme: TextTheme(
    titleLarge: TextStyle(fontSize: 24),
    titleMedium: TextStyle(fontSize: 18),
  ),
  appBarTheme:
      AppBarTheme(backgroundColor: Colors.blue, foregroundColor: Colors.white),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blue,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.white54),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed),
);
