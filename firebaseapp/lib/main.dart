import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseapp/Services/serviec.dart';
import 'package:firebaseapp/Services/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Services/emailpass.dart';
import 'Services/homescreen.dart';

SharedPreferences? pref;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  pref = await SharedPreferences.getInstance();

 onStart().onInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: pref?.get("id") == null  ? SignIn(): Home(),
    );
  }
}