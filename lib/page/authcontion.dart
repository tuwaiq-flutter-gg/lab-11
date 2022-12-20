import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lap11/home.dart';

final auth = FirebaseAuth.instance;


signinWithEmail({required String email, required String password}) async {
  try {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    if (user.user?.uid != null) {
      Get.to(home());
    }
  } catch (error) {
    print(error);
  }
}


UserEmail() {
  return auth.currentUser?.email;
}