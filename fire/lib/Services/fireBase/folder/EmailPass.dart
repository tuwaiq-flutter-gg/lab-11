


import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../views/homescreen.dart';
var inctence =FirebaseAuth.instance;

createAccount({required String email, required String password})async{
  try{

    var user= await inctence.createUserWithEmailAndPassword(email: email, password: password);
   
    print(user.user?.uid);



  }catch(w){
   Get.snackbar("title", w.toString());
  }
}

loginWithPass({required String email, required String password})async{
  try{
var user= await inctence.signInWithEmailAndPassword(email: email, password: password);
if(user.user?.uid!=null){
Get.to(homeScreen());
}
  }on FirebaseAuthException catch(err){

  }

}


setEmail({required String email}){
  try{
   
  
print("dddddlkasdlawdkaa");
print(email);
print(inctence.currentUser?.uid);
    inctence.currentUser?.updateEmail(email);
    print("fffwlkeflmwefkjlefjlwekfjwef");
  }catch(err){
    print(err);
    print("objekllklklkklklkllklkklkllkklklklklklklklkllkkllkct");
   }
}
