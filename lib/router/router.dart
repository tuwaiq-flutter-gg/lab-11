import 'package:get/get.dart';
import 'package:rakan_lab11/views/homePage.dart';
import 'package:rakan_lab11/views/loginPage.dart';
import 'package:rakan_lab11/views/signUpPage%20copy.dart';

List<GetPage> routerApp = [
  GetPage(
    name: RouterName.homePage,
    page: () => HomePage(),
  ),
  GetPage(
    name: RouterName.loginPage,
    page: () => LoginPage(),
  ),
  GetPage(
    name: RouterName.signUpPage,
    page: () => SingUpPage(),
  ),
];

abstract class RouterName {
  static const String homePage = "/";
  static const String loginPage = "/loginPage";
  static const String signUpPage = "/signUpPage";
}
