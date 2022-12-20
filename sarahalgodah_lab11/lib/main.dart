import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab11/Model/Auth.dart';
import 'package:sarahalgodah_lab11/View/HomePage.dart';
import 'package:sarahalgodah_lab11/View/NewEmail.dart';
import 'package:sarahalgodah_lab11/View/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

 SharedPreferences? preferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Auth().onInit();
  preferences = await SharedPreferences.getInstance();


  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/SignIn",
      getPages: [
        GetPage(
          name: "/SignIn", page: () => SignIn(),),
        GetPage(
           name: "/HomePage", page: () => HomePage(),),
        GetPage(
           name: "/NewEmail", page: () => NewEmail(),),
      ],
    );
  }
}
