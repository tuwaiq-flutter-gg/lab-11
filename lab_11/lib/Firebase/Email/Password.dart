import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lab_11/Pages/HomePage.dart';
import 'package:lab_11/Pages/LogIn.dart';

CreateEmailPassword({required String email, required String password}) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: "Test1@GG.com",
      password: "Test1234",
    );
    print(credential);
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

UpdateingEmail({required String newEmail}) {
  try {
    FirebaseAuth.instance.currentUser?.updateEmail(newEmail);
    Get.snackbar("successful", "email successfully changed to $newEmail");
    Get.off(LogIn());
  } catch (error) {
    print(error);
  }
}

SigninEmailPassword(
    {required String emailAddress, required String password}) async {
  try {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);
    if (user.user!.uid != null) {
      Get.to(() => HomePage());
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}
