import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test2cli/main.dart';

class Start extends GetxService {
  checkUsers() async {
    try {
 var inst = FirebaseAuth.instance;
    var userID = inst.currentUser?.uid;
    print("step 1");

    if (userID?.isEmpty == false) {
      prefs?.setString("id", userID!);
    }

    } catch (e) {
      print(e);
    }
   
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUsers();
  }
}
