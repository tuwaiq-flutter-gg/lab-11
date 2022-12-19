import 'package:flutter_application_1/Screen/Home.dart';
import 'package:flutter_application_1/Screen/Login.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routerApp = [
  GetPage(name: NameRoute.Login, page: () => Login1()),
  GetPage(name: NameRoute.Home, page: () =>  HomePage()),
  
];

abstract class NameRoute {
  static String Login = "/Login1";
  static String  Home = "/Home";
}
