
// import 'package:actividad1/screens/body_boarding.dart';
// import 'package:actividad1/screens/components/on_boarding.dart';
import 'package:actividad1/screens/splash_view.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Corte 1',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),
      home: SplashView(),
    );
  }
}
