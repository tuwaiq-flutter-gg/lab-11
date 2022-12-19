import 'package:faisal_lab11/Servises/FireBase/emailauth.dart';
import 'package:faisal_lab11/View/UserInfo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  TextEditingController Emailcon = TextEditingController();
  TextEditingController Passcon = TextEditingController();

  createaccount() {
    emailSignup(emailAddress: Emailcon.text, password: Passcon.text);
    Get.to(() => USerInfo());
    update();
  }
}
