import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:login_design/login_screen.dart';
import 'package:login_design/provider/locale_provider.dart';
import 'package:login_design/support_locale.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  runApp(new MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          return Consumer<LocaleProvider>(builder: (context, provider, child) {
            return MaterialApp(
                title: 'Flutter Demo',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate
                ],
                locale: provider.locale,
                supportedLocales: L10n.support,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.amber,
                ),
                home: LoginScreen());
          });
        });
  }
}
