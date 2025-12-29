import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:signix_new/favourite_item.dart';
import 'package:signix_new/login.dart';
import 'package:signix_new/signup.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //  Initializes Firebase before runApp

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => const SignUp(),
        '/login': (context) => const Login(),
        '/favourite': (context) => FavouriteItem(),
      },
    );
  }
}
