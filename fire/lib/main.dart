import 'package:fire/Services/Service.dart';
import 'package:fire/views/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'views/firstpage.dart';
SharedPreferences? share;
void main(List<String> args) async{

   WidgetsFlutterBinding.ensureInitialized();
   
  await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
  );
     share= await SharedPreferences.getInstance();

   start().onInit();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:share?.get("id")==null? firstPage():homeScreen(),
    );
  }
}

// web       1:26279985577:web:3fca7e8508b8e2b7c104b8
// android   1:26279985577:android:6fd7a6608a600b1fc104b8
// ios       1:26279985577:ios:8152dbc5874c6dc3c104b8
// macos     1:26279985577:ios:8152dbc5874c6dc3c104b8