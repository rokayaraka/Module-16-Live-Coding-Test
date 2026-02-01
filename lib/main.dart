import 'package:flutter/material.dart';
import 'package:module16_livecoding_test/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarThemeData(
          backgroundColor: Color(0xff597a8a),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:  Color(0xff597a8a),
             foregroundColor: Colors.white,
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
             ),
          ),
        ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          color: Colors.red,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          color: Colors.grey,
          fontSize: 15,

        ),
      ),

      ),
      home: HomePage(),
    );
  }
}