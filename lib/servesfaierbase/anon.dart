import 'package:firebase_auth/firebase_auth.dart' as fireb;

anonlogin() async {
  try {
    var auth = fireb.FirebaseAuth.instance;
    var users = auth.signInAnonymously();
    print("users");
  } catch (error) {
    print(error);
  }
}

signout() async {
  try {
    var auth = fireb.FirebaseAuth.instance;
    var users = auth.signOut();
    print("users");
  } catch (error) {}
}

checkuser() async {
  try {
    var auth = fireb.FirebaseAuth.instance;
    var users = auth.currentUser?.uid;
    print("users");
  } catch (error) {}
}

funcsignout() async {
  try {
    var auth = fireb.FirebaseAuth.instance;
    var users = auth.signOut();
    print("users");
  } catch (error) {}
}
