import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test2cli/Pages/homePage.dart';
import 'package:test2cli/main.dart';

var instance = FirebaseAuth.instance;

creatAccont({required String emailUser, required String passwordUser}) async {
  try {
    var user1 = instance.createUserWithEmailAndPassword(
        email: emailUser, password: passwordUser);
    print("Step 1");
    print("Step 2");
  } catch (e) {
    print(e);
  }
}

SingInWithEmail({required String email, required String password}) async {
  try {
    var user = await instance.signInWithEmailAndPassword(
        email: email, password: password);

    print("Step 1");

    if (user.user?.uid != null) {
      Get.to(() => Home());
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

printUsrId() {
  // to print id user
  return instance.currentUser?.uid;
}

printEmail() {
  // print email
  return instance.currentUser?.email;
}

printdata() {
  //pront data
  return instance.currentUser?.metadata.toString();
}
