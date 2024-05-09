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
      theme: ThemeData(useMaterial3: true),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
