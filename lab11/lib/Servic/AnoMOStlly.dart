


import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:lab11/Screen/singIN.dart';
import 'package:lab11/Servic/Emeilandapasword.dart';
import 'package:lab11/main.dart';

anonymoslyLogin()async{

try{

var auth = FirebaseAuth.instance;
var user = await auth.signInAnonymously();
print("user sing in");
print(user.user?.uid.toString());
}catch(error){
print(error);

}




}
checkUser()async{

  try{

var auth = FirebaseAuth.instance;
var user = auth.currentUser?.uid;
print("user sing in");
print("User ID :$user");
}catch(error){
print(error);

}



}
funcSignnout()async{


  try{

var auth = FirebaseAuth.instance;
var user = auth.signOut();
await Prefs?.clear();
Get.offAll(() => SingIN());
print("user sing in");
print("user sign out");
}catch(error){
print(error);

}





}