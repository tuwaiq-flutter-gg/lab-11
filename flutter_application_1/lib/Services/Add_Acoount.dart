import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/Screen/Home.dart';
import 'package:get/get.dart';

var instance = FirebaseAuth.instance;

createAccount({required String email, required String password}) async {
  try {
    var user = await instance.createUserWithEmailAndPassword(
        email: email, password: password);
    print(user.user?.uid);
    print(user.user?.email);
  } catch (error) {
    print(error);
  }
}

