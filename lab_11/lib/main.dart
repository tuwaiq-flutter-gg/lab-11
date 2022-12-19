import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_11/Firebase/Email/Password.dart';
import 'package:lab_11/Pages/HomePage.dart';
import 'package:lab_11/Pages/LogIn.dart';
import 'package:lab_11/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //CreateEmailPassword(email: "a", password: "a");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LogIn(),
    );
  }
}
