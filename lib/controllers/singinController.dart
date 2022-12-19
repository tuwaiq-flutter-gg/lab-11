import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:get/get.dart';
import 'package:rakan_lab11/router/router.dart';

class signinController extends GetxController {
  bool checkValue = false;
  final fb.FirebaseAuth _auth = fb.FirebaseAuth.instance;
  late String email, password;

  changeCheckValue() {
    checkValue = !checkValue;
    update();
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed(RouterName.homePage);
    } catch (error) {
      Get.snackbar(
        "Error sign in",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }

  void createUserWithEmailAndPassword() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (error) {
      Get.snackbar(
        "Error sign up",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }

  void updateUserEmail() async {
    try {
      await _auth.currentUser!.updateEmail(email);
    } catch (error) {
      Get.snackbar(
        "Error update",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
    } catch (error) {
      Get.snackbar(
        "Error Sign out",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }
}
