


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lab11/Screen/Home.dart';
import 'package:lab11/Screen/singIN.dart';
import 'package:lab11/Service.dart';
import 'package:lab11/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';



SharedPreferences? Prefs;

void main(List<String> args)async {

 WidgetsFlutterBinding.ensureInitialized();
  

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
 
  Prefs = await SharedPreferences.getInstance();
  Start().onInit();
  //options:Def
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      
      debugShowCheckedModeBanner: false,
      
      
      home:SingIN(),
    );
  }
}


