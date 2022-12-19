import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_lab11/files/Controller/controller.dart';
import 'package:salem_lab11/files/Screens/homepage.dart';

final auth = FirebaseAuth.instance;
MyDataController dataController = Get.put(MyDataController());

anonLogin() async {
  try {
    final users = await auth.signInAnonymously();

    print("Signed in as:");
    print(users.user?.uid.toString());
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }
}

checkUser() async {
  try {
    var users = auth.currentUser?.uid;
    print(users.toString());
  } catch (error) {
    print("error");
  }
}

signOut() async {
  try {
    final users = await auth.signOut();
    print("Signed out");
  } catch (error) {
    print("");
  } catch (error) {
    print("error");
  }
}

signinEmail(String email, String password) async {
  try {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    if (user.user?.uid != null) {
      Get.to(HomePage());
    }
  } catch (error) {
    Get.defaultDialog(
        title: "Error", content: Text("Email or Password is incorrect"));
  }
}

Future resetEmail() async {
  try {
    await auth.currentUser!.updateEmail(dataController.newEmail.text);
  } catch (error) {
    print("object");
  }
}
