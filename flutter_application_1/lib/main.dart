import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Language/Language.dart';
import 'package:flutter_application_1/Route/NameRoute.dart';
import 'package:flutter_application_1/Screen/Home.dart';
import 'package:flutter_application_1/Screen/Login.dart';
import 'package:flutter_application_1/Services/Services.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
main(List<String> args) async {
  //it is the erorr but WidgetsFlutterBinding if you want use SharedPreferences to your app.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  prefs = await SharedPreferences.getInstance();
  Start().onInit();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: prefs?.get("id") == null ? Login1() : HomePage(),
      supportedLocales: [Locale("en", "US"), Locale("ar", "SA")],
      fallbackLocale: const Locale("en", "US"),
      translations: Languages(),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(227, 186, 186, 245),
      ),
    );
    ;
  }
}
