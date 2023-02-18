import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:venatus_project/actual_home_screen.dart';
import 'package:venatus_project/homeScreen.dart';
import 'package:venatus_project/signIn.dart';
import 'package:venatus_project/signUp.dart';

import 'psytix.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}

