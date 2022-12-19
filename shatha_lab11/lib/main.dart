// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:shatha_lab11/firebase_options.dart';
import 'package:shatha_lab11/view/first_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main(List<String> args) async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: FirstPage(),
    );
  }
}