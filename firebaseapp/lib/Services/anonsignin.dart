import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/Services/signin.dart';
import 'package:get/get.dart';

import '../main.dart';

anonLogin() async {
  try {
    var auth = FirebaseAuth.instance;
    var user = await auth.signInAnonymously();
    print("usersin");
    print(user.user?.uid.toString());
  } catch (error) {
    print(error);
  }
}

userSignout() async {
  try {
    var auth = FirebaseAuth.instance;
    var user = await auth.signOut();
       await pref?.clear();
    Get.offAll(() => SignIn());
    print("usersinout");
  } catch (error) {
    print(error);
  }
}

checkUser() async {
  try {
    var auth = FirebaseAuth.instance;
    var user = await auth.currentUser?.uid;
    print("Usr ID : $user");
  } catch (error) {
    print(error);
  }
}


createAccount()async{
  try {
    var auth = FirebaseAuth.instance;
    var user = await auth.currentUser?.uid;
    print("Usr ID : $user");
  } catch (error) {
    print(error);
  }


}