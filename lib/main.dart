import 'package:actividad1/pages/change_password.dart';
import 'package:actividad1/pages/forgot_password.dart';
import 'package:actividad1/pages/home.dart';
import 'package:actividad1/pages/login.dart';
import 'package:actividad1/pages/register.dart';
import 'package:actividad1/splash/splash_view.dart';
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
      initialRoute: 'home',
      routes: {
        'login': (context) => const Login(),
        'home': (context) => const HomePage(),
        'splash': (context) => const SplashView(),
        'register': (context) =>  Register(),
        'changePassword': (context) => const ChangePassword(),
        'forgotPassword': (context) => const ForgotPassword(),

      },
      

    );
  }
}
