import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hadeel_lab11/Router/Router.dart';
import 'package:hadeel_lab11/Services.dart';
import 'package:hadeel_lab11/firebase_options.dart';
import 'package:hadeel_lab11/views/Home.dart';
import 'package:hadeel_lab11/views/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  prefs = await SharedPreferences.getInstance();
  Services().onInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute:
          GetStorage().read("ID") != null ? NameRoute.Home : NameRoute.SignIn,
      getPages: routerApp,
    );
  }
}
