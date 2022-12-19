import 'package:firebase_auth/firebase_auth.dart';

signInAnonymously() async {
  try {
    // final userCredential = await FirebaseAuth.instance.signInAnonymously();
    final auth = await FirebaseAuth.instance;
    final users = await auth.signInAnonymously();
    print("Signed in with temporary account.");
    print(users.user?.uid.toString());
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }
}

SignOut() async {
  try {
    // final userCredential = await FirebaseAuth.instance.signInAnonymously();
    final auth = await FirebaseAuth.instance;
    final users = await auth.signOut();
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }
}

checkusers() async {
  try {
    // final userCredential = await FirebaseAuth.instance.signInAnonymously();
    final auth = await FirebaseAuth.instance;
    final users = await auth.currentUser?.uid;
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }
}
