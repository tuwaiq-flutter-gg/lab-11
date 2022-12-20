import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab11/View/HomePage.dart';
import 'package:sarahalgodah_lab11/View/SignIn.dart';
import 'package:sarahalgodah_lab11/main.dart';

var instance = FirebaseAuth.instance;

class Auth extends GetxController {
  var id = instance.currentUser?.uid;
  var email = instance.currentUser?.email;
  var creationDay = instance.currentUser?.metadata.creationTime;

  //Sign Out
  signOutFunction() async {
    try {
      var user = await instance.signOut();
      preferences!.clear();
      Get.offAll(() => SignIn());
    } catch (e) {
      print(e);
    }
    update();
  }
  
  //Sign in Email
  signInWithEmail({required String email, required String password}) async {
    try {
      var user = await instance.signInWithEmailAndPassword(
          email: email, password: password);

      if (user.user?.uid != null) {
        Get.to(() => HomePage());
      }
    } catch (e) {
      print(e);
    }
    update();
  }

  //Update Email
  updateEmail({required email}) async {
    try {
      var user = await instance.currentUser?.updateEmail(email);
    } catch (e) {
      print(e);
    }
    update();
  }


  //Check User
  userCheck() async {
    try {
      var userID = instance.currentUser?.uid;
      if (userID?.isEmpty == false) {
        print(userID);
        preferences?.setString("id", userID!);
      }
    } catch (e) {
      print(e);
    }
    update();
  }

    @override
  void onInit() {
    userCheck();
    // TODO: implement onInit
    super.onInit();
  }
}
