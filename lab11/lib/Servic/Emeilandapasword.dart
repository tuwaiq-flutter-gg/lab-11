
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:lab11/Screen/Home.dart';



var instane = FirebaseAuth.instance;


ceratAccount({required String email,required String password})async{
try{
var user = await instane.createUserWithEmailAndPassword(email: email, 
password: password);
print(user.user?.uid);
print(user.user?.email);
}catch(error){
  print(error);
  //Get.snackbar();

}


}
SingInwithEmail({required String email,required String password})async{
try{
  var user = await instane.signInWithEmailAndPassword
  (email: email, password: password);
  if(user.user?.uid != null){
 Get.to(() =>Home());
  }
 
}catch(error){
 print(error);

}
}
upId(){
var Id = instane.currentUser?.uid;
return Id;

}

 upEmail(){
  var EmailL = instane.currentUser?.email;
  return EmailL;

}
upPasword(){
  var Pasowrdd = instane.currentUser?.metadata.creationTime;
  return Pasowrdd;
}

updait({required String email})async{
  try{
     var Updaite = instane.currentUser?.updateEmail(email);

  }catch(error){
    print(error);
  }
 
}


