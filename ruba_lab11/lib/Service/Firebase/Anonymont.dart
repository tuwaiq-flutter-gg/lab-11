
import 'package:firebase_auth/firebase_auth.dart'as authFire;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ruba_lab11/Control/Control.dart';


// Future register()async{
//   await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
// }




anonymouslyLogIn()async{
 try {
  var auth=authFire.FirebaseAuth.instance;
  var user= await auth.signInAnonymously();
  print("users Sign in:");
  print(user.user?.uid.toString());
  }catch(error){
    print(error);
  }
}

authStateChanges(){
  FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}

userChanges(){
  FirebaseAuth.instance
  .userChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}

idTokenChanges(){
  FirebaseAuth.instance
  .idTokenChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}

checkusers()async{
 try {
  var auth=authFire.FirebaseAuth.instance;
  var user= auth.currentUser?.uid;
  print("users Sign in: $user");
  }catch(error){
    print(error);
  }
}

funcSignout(String text)async{
 try {
  var auth=authFire.FirebaseAuth.instance;
  await auth.signOut();
  print("users Sign out:");
  }catch(error){
    print(error);
  }
}