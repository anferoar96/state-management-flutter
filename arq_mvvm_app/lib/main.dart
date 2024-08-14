import 'package:arq_mvvm_app/screens/login/view/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter MVVM Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginScreen());
  }
}
