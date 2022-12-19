import 'package:firebase_auth/firebase_auth.dart' as authFire;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:test2cli/Pages/singIn.dart';
import 'package:test2cli/main.dart';

AnonymouslySinIn() async {
 
  try {
    var auth =
        authFire.FirebaseAuth.instance; //authFire is name of packges in import
    print("Step 1 t");

    var user = await auth.signInAnonymously();
    print("Step 2 t");
    print("Uesr Sin In");

    print(user.user?.uid.toString());
  } catch (e) {
    print(e);
  }
}

chekUeser()  async{
  try {
    var auth = FirebaseAuth.instance;
    print("Sepe 1 true");

    //  currentUser to chack

    var user = await auth.currentUser?.uid;
    print("Sepe 2 true");
    print("User Id ${user}");
  } catch (e) {
    print(e);
  }
}

LogOut() async {
  try {
    var auth = FirebaseAuth.instance;
    print("Sepe 1 true");

     await auth.signOut();
     await prefs?.clear();
     Get.offAll(() => Singin());
    print("Sepe 2 true");

  } catch (e) {
    print(e);
  }
}
