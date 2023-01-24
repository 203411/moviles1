import 'package:actividad1/pages/login.dart';
import 'package:actividad1/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Actividades :D',
      // theme: ThemeData(
      //   primarySwatch: Color.fromARGB(255, 13, 146, 255)RGB(255, 255, 255, 255),
      // ),
      home: Register(),
    );
  }
}
