import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class userController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController newEmailController = TextEditingController();
  TextEditingController PassController = TextEditingController();
  String? ID, creationDate, email;

  uploadUserData() async {
    creationDate =
        FirebaseAuth.instance.currentUser?.metadata.creationTime as String?;
    email = FirebaseAuth.instance.currentUser?.email;
    ID = FirebaseAuth.instance.currentUser?.uid;
    update();
  }
}
