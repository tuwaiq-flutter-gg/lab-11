import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab11/view/first_page.dart';
import 'package:shatha_lab11/view/home_page.dart';

final instance  = FirebaseAuth.instance;



createAccount({required String email , required String password}) async {
  try {
    
    final user = await instance.createUserWithEmailAndPassword(email: email, password: password) ;

    print(user.user!.uid);

    print('heeeeeeeeeellllllllllooooooooooooo');

    Get.to( () => const HomePage() );

  } catch (error) {
    print(error);
  }
}


loginWithEmail({required String email , required String password}) async {
  try {

    final user = await instance.signInWithEmailAndPassword(email: email, password: password);

    if (user.user?.uid != null) {
      Get.to( () => const HomePage() );
    }

  } on FirebaseAuthException catch (error) {
    Get.snackbar(error.code , error.code );
  }
}

updateUserEmail({required TextEditingController enteredEmail}){
  try {
    
    final user = instance.currentUser?.updateEmail(enteredEmail.text);

    Get.snackbar('Email updated successfully', '');

    userSignOut();

  } catch (error) {
    print(error);
  }
}

userSignOut() async {
  try {

    await  FirebaseAuth.instance.signOut();
    print('signed out');

    Get.offAll(const FirstPage());

  } catch (e) {
    print(e);
  }
}


getUserID(){
  return instance.currentUser?.uid;
}

getUserEmail(){
  return instance.currentUser?.email;
}

getUserCreationDay(){
  return instance.currentUser?.metadata.creationTime.toString();
}


