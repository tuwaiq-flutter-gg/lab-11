import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hadeel_lab11/Router/Router.dart';
import 'package:hadeel_lab11/main.dart';

createUserAccount({required String email, required String password}) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
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

signInWithEmail({required String email, required String password}) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

updateUserEmail({required String email}) async {
  try {
    print(FirebaseAuth.instance.currentUser?.email);
    await FirebaseAuth.instance.currentUser?.updateEmail(email);
    print(FirebaseAuth.instance.currentUser?.email);
  } catch (e) {
    print(e);
  }
}

signOut() async {
  try {
    await FirebaseAuth.instance.signOut();
    GetStorage().erase();
  } catch (e) {
    print(e);
  }
}
