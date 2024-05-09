import 'package:flutter/material.dart';
import './screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(0, 234, 10, 204),
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(), // Route for the login screen
        // Add routes for other screens here, e.g., '/home': (context) => HomeScreen(),
      },
    );
  }
}
