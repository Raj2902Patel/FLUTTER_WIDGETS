import 'package:flutter/material.dart';
import 'package:week_3/pages/container.dart';
import 'package:week_3/pages/staggered_gridview/masonry.dart';
import 'package:week_3/pages/staggered_gridview/staggered_widget.dart';

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
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
        ),
      ),
      home: const ContainerPage(),
    );
  }
}

// Raj Patel
