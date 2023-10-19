import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'faishalyb_final_submission',
      theme: ThemeData(),
      home: const Login(),
    );
  }
}