import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruba_lab11/Component/TextFiled.dart';
import 'package:ruba_lab11/Component/button.dart';
import 'package:ruba_lab11/Control/Control.dart';
import 'package:ruba_lab11/Screen/SignIn.dart';
import 'package:ruba_lab11/Service/Firebase/Auth.dart';

class Home extends StatelessWidget {
   Home({super.key});
   Control Controller = Get.put(Control());
final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height: 70,),
          Center(child: Text("A11".tr,style: TextStyle(fontSize: 30,),)),
          SizedBox(height: 30,),
            Text("Cureent Email: ${user!.email!}"),
            SizedBox(height: 15,),
            Text("ID: ${user!.uid}"),
            SizedBox(height: 15,),
            Text("Creation Day: ${user!.metadata.creationTime}"),
            SizedBox(height: 50,),
            TextFileded(title: "A2".tr,controller1:Controller.updateEmailController, scureText: false),
            SizedBox(height: 40,),
            Button(title: "A10".tr,onPressed: () async{
              UpdateEmail();
              Controller.update();
            },),
            SizedBox(height: 40,),
            Button(title: "A4".tr,onPressed: () {
              Get.offAll(SignIn());
              FirebaseAuth.instance.signOut();
            },),
          ],
        ),
      ),
    );
  }
}