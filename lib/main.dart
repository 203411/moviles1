import 'package:actividad1/firebase_options.dart';
import 'package:actividad1/pages/change_password.dart';
import 'package:actividad1/pages/forgot_password.dart';
import 'package:actividad1/pages/home.dart';
import 'package:actividad1/pages/login.dart';
import 'package:actividad1/pages/register.dart';
import 'package:actividad1/services/firebase_auth_methods.dart';
import 'package:actividad1/splash/splash_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:provider/provider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
      ],
      child: MaterialApp(
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
          // 'forgotPassword': (context) => const ForgotPassword(),
    
        },
      ),
    );
  }
}

// class AuthWrapper extends StatelessWidget {
//   const AuthWrapper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User?>();
//     if (firebaseUser != null) {
//       return const HomePage();
//     }
//     return const Login();
//   }
