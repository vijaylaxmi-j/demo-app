import 'package:demo/Index_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 1, 119, 254),
          primary: const Color.fromARGB(255, 1, 119, 254),
        ),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 1, 119, 254),foregroundColor: Colors.white),
        ),
      ),
      home: const IndexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
