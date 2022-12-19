
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/Services/homescreen.dart';
import 'package:firebaseapp/Services/signin.dart';
import 'package:get/get.dart';


var inst = FirebaseAuth.instance;


createAccount({required String email,required String password })async{
  try {
    print("herehrererereerererererereererererrerreereereerrererere");
    var user = await inst.createUserWithEmailAndPassword(
      email: email, 
      password: password
      );
      print("object");

    print(user.user?.uid);
  } catch (error) {
    print(error);
  }


}



signInWithEmail({required String email,required String password })async{

try{
    var b6e5 = await inst.signInWithEmailAndPassword(
      email: email, 
      password: password
      );

if(b6e5.user?.uid != null){
  Get.to(()=> Home());
}


}on FirebaseAuthException catch(error){
print(error.code);
    if (error.code == "wrong-password") {
      Get.snackbar("wrong", "Email or password is wrong");
    } else if (error.code == "network-request-failed") {
      Get.snackbar("wrong", "check your connections");
    }}
}


editEmail({required String Email}){
  try{
    var user = inst.currentUser?.updateEmail(
      Email 
    );
  Get.to(()=> SignIn());



  }catch (error) {
    print(error);
    
  }
  



}