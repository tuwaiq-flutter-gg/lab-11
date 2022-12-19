import 'package:fire/Services/fireBase/annoynumousSignIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Services/fireBase/folder/EmailPass.dart';
class homeScreen extends StatelessWidget {
   homeScreen({super.key});
TextEditingController controller1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${FirebaseAuth.instance.currentUser?.metadata.creationTime.toString()}  '),
                    Text('${FirebaseAuth.instance.currentUser?.email}  '),
                     Text('${FirebaseAuth.instance.currentUser?.uid}  '),


          Text("set email"),
             TextField(controller:controller1 , decoration: InputDecoration(
            label: Text("email") 
          ),),  
  ElevatedButton(onPressed: (){
    print(controller1.text);
setEmail(email: controller1.text);
          //  loginWithPass(email: controller1.text, password: controller2.text);
          }, child: Text("Set email")),

           ElevatedButton(onPressed: (){
signOut();
          //  loginWithPass(email: controller1.text, password: controller2.text);
          }, child: Text("Sign out"))
        ],
      ),
    );
  }
}