import 'package:flutter/material.dart';
import 'package:lsd/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(0, 234, 10, 204),
      ),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
