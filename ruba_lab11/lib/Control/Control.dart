import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Control extends GetxController {
  
final emailController = TextEditingController();
final passwordController= TextEditingController();
final updateEmailController= TextEditingController();

  Rx<bool?> check = false.obs;
  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  // }
}

