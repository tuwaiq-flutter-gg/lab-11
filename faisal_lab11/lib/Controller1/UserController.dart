import 'package:faisal_lab11/Comp/signup.dart';
import 'package:faisal_lab11/Servises/FireBase/emailauth.dart';
import 'package:faisal_lab11/View/UserInfo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  TextEditingController Emailcon = TextEditingController();
  TextEditingController Passcon = TextEditingController();
  String uid = "";
  DateTime? creationDate;

  createaccount() {
    print("HI0000");

    emailSignup(emailAddress: Emailcon.text, password: Passcon.text);
  }

  //Sign in
  signinmethod() {
    signunwithemail(email: Emailcon.text, password: Passcon.text);
  }

// Updating the email
  updateemail() {
    ubdatingemail(email: Emailcon.text);
  }
}
