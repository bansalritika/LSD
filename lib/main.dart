import 'package:flutter/material.dart';
import './screens/login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(0, 234, 10, 204),
      ),
      home: LoginScreen(),
    );
  }
}

