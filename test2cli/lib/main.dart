import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test2cli/Pages/homePage.dart';
import 'package:test2cli/Pages/singIn.dart';
import 'package:test2cli/firebase_options.dart';
import 'package:test2cli/servas/firebase/AnonymouslySinIn.dart';
import 'package:test2cli/servas/firebase/Auth/EmailPassword.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test2cli/servas/firebase/Auth/star.dart';

SharedPreferences? prefs;
//SharedPreferences? perfs;
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  prefs = await SharedPreferences.getInstance();
  Start().onInit();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: prefs?.get("id") == null ? Singin() : Home(),
    );
  }
}




