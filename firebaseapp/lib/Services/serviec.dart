
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/Services/emailpass.dart';
import 'package:firebaseapp/main.dart';
import 'package:get/get.dart';

class onStart extends GetxService{



  checkUsers(){

    var inst = FirebaseAuth.instance;

    var userID = inst.currentUser?.uid;
    if (userID?.isEmpty == false);
    print(userID);
    pref?.setString("id", userID!);
     }
     @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUsers();
  }
     
     }