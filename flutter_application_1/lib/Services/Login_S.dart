import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home.dart';
import 'package:flutter_application_1/Screen/Login.dart';
import 'package:flutter_application_1/Services/Add_Acoount.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

signInWithEmail({required String email, required String password}) async {
  try {
    var user = await instance.signInWithEmailAndPassword(
        email: email, password: password);

    if (user.user?.uid != null) {
      Get.to(() => HomePage());
    }
  } on FirebaseAuthException catch (error) {
    print(error.code);
    if (error.code == "wrong-password") {
      Get.snackbar("wrong", "Email or password is wrong");
    } else if (error.code == "network-request-failed") {
      Get.snackbar("wrong", "check your connections");
    }
  }
}

anonymouslyLogin() async {
  try {
    var auth = FirebaseAuth.instance;
    var user = await auth.signInAnonymously();
    print("Users Sign in ");
    print(user.user?.uid.toString());
  } catch (error) {
    print(error);
  }
}

updateUserEmail({required TextEditingController enteredEmail}) {
  try {
    final user = instance.currentUser?.updateEmail(enteredEmail.text);
    Get.snackbar("Done", "hhhh");
  } catch (error) {
    print(error);
  }
}

funcSignout() async {
  try {
    var auth = FirebaseAuth.instance;
    await auth.signOut();
    await prefs?.clear();
    Get.offAll(() => Login1());

    print("Users is Sign Out ");
  } catch (error) {
    print(error);
  }
}

getID() {
  return instance.currentUser?.uid;
}

getEmail() {
  return instance.currentUser?.email;
}

getDay() {
  return instance.currentUser?.metadata.creationTime.toString();
}
