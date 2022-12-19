// ignore_for_file: library_prefixes, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sharif_lab11/Controllers/AuthController.dart';

class Authentication {
  static FirebaseAuth instance = FirebaseAuth.instance;

  static emailLogIn({required String email, required String password}) async {
    try {
      await instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (error) {
      Get.snackbar("Log In", "Error : ${error.message}");
      AuthController controller = Get.find();
      controller.authError = error.message;
    }
  }

  static emailSignUp({required String email, required String password}) async {
    try {
      await instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (error) {
      Get.snackbar("Sign Up", "Error : ${error.message}");
      AuthController controller = Get.find();
      controller.authError = error.message;
    }
  }

  static updateEmail({required String newEmail}) async {
    try {
      await instance.currentUser?.updateEmail(newEmail);
      Get.snackbar("Update Email", "Email changed to : $newEmail");
    } on FirebaseAuthException catch (error) {
      Get.snackbar("Update Email", "Error : ${error.message}");
      AuthController controller = Get.find();
      controller.authError = error.message;
    }
  }

  static signOut() async {
    try {
      await signOut();
    } on FirebaseAuthException catch (error) {
      Get.snackbar("sign Out", "Error : ${error.message}");
    }
  }
}
