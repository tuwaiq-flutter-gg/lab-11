import 'package:get/get.dart';
import 'package:hadeel_lab11/Router/BindingClasses.dart';
import 'package:hadeel_lab11/views/Home.dart';
import 'package:hadeel_lab11/views/SignIn.dart';

List<GetPage<dynamic>>? routerApp = [
  GetPage(
      name: NameRoute.SignIn,
      page: () => SignIn(),
      binding: HomeScreenBinding()),
  GetPage(
    name: NameRoute.Home,
    page: () => Home(),
    binding: HomeScreenBinding(),
  )
];

abstract class NameRoute {
  static String SignIn = "/SignIn";
  static String Home = "/home";
}
