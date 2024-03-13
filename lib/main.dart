import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shophomies/auth/login.dart';
import 'package:shophomies/auth/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDZGcIGEsFXh1gZyZbQBap6Hn5zw8LJgsU",
        authDomain: "shophomies-387a0.firebaseapp.com",
        projectId: "shophomies-387a0",
        storageBucket: "shophomies-387a0.appspot.com",
        messagingSenderId: "1096979051557",
        appId: "1:1096979051557:web:389d2887af955e31763bcc",
        measurementId: "G-CLP2C8QTY1"
    ),
  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'register': (context) => const MyRegister(),
        'login': (context) => const MyLogin(),
      },
    );
  }
}
