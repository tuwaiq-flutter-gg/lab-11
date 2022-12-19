import 'package:aa/Screens/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Screens/SignIn.dart';

var inctence = FirebaseAuth.instance;

createAcoont({required String email, required String pass}) async {
  try {
    var user = await inctence.createUserWithEmailAndPassword(
        email: email, password: pass);
    print(user.user?.uid);
  } catch (error) {}
}

login({required String email, required String pass}) async {
  try {
    var user =
        await inctence.signInWithEmailAndPassword(email: email, password: pass);

    if (user.user?.uid != null) {
      Get.to(Home());
    }
  } catch (error) {
    print(error);
  }
}

signOut() async {
  try {
    var user = await inctence.signOut();
    Get.to(SignIn());
  } catch (error) {}
}

changeEmail({required String email}) async {
  try {
    inctence.currentUser?.updateEmail(email);
  } catch (error) {}
}

printId() {
  var id = inctence.currentUser?.uid;
  return id;
}

printEmail() {
  var email = inctence.currentUser?.email;
  return email;
}

printCreationDay() {
  var creationDay = inctence.currentUser?.metadata.creationTime?.day.toString();
  return creationDay;
}
// printall() {
//   var creationDay = inctence.currentUser?.toString();
//   return creationDay;
// }
