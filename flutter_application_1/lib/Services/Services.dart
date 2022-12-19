import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/state_manager.dart';

class Start extends GetxService {
  checkUsers() async {
    var inst = FirebaseAuth.instance;

    var userID = inst.currentUser?.uid;
    print(userID);
    if (userID?.isEmpty == false) {
      prefs?.setString("id", userID!);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUsers();
  }
}

