import 'package:flutter/material.dart';
import 'package:lsd/screens/login.dart'; // Import your login screen file here

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
      home: LoginScreen(), // Set the login screen as the initial screen
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(), // Route for the login screen
        // Add routes for other screens here, e.g., '/home': (context) => HomeScreen(),
      },
    );
  }
}
