import 'package:fire/main.dart';
import 'package:fire/views/firstpage.dart';
import 'package:firebase_auth/firebase_auth.dart' as authFire;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

login()async{

  try{

var user= await authFire.FirebaseAuth.instance.signInAnonymously();

print(user.user!.uid);
  }catch(err){
print(err.toString());
  }
}




signOut()async{
  try{

var user= await authFire.FirebaseAuth.instance.signOut();
await share!.clear();
// print(user.user!.uid);
print(authFire.FirebaseAuth.instance.currentUser);
Get.offAll(firstPage());
  }catch(err){
print(err.toString());
  }
}


checkUser()async{
    try{

var user= await authFire.FirebaseAuth.instance.currentUser!.uid;

// print(user.user!.uid);
  }catch(err){
Get.snackbar("title", "message");

  }
}
