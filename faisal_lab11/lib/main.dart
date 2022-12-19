import 'package:faisal_lab11/Controller1/UserController.dart';
import 'package:faisal_lab11/View/SignUpPAge.dart';
import 'package:faisal_lab11/View/UserInfo.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SignUpPage(),
      //  home: USerInfo(),
    );
  }
}
