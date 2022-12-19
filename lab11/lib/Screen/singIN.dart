


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab11/Screen/Home.dart';
import 'package:lab11/Servic/Emeilandapasword.dart';
import 'package:lab11/componet/Button.dart';
import 'package:lab11/componet/TixstFiled.dart';

class SingIN extends StatelessWidget {
   SingIN({super.key});


 TextEditingController? controllerEmail = TextEditingController();

 TextEditingController? controllerPassword  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:ListView(

      
      
      children: [

     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 200,),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text("Emeil : ",style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10,),
        TixsetFiled(hintText: "Enter Email", controller: controllerEmail, texst: '',),
        SizedBox(height: 10,),
         Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text("Pasowrd : ",style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.bold),),
          
        ),
         SizedBox(height: 10,),
        TixsetFiled(hintText: "Enter Email",controller: controllerPassword, texst: '',),
         SizedBox(height: 20,),
        
         TextBut(OnPree: ()async{
          SingInwithEmail(email:controllerEmail!.text
          ,password: controllerPassword!.text);
         // Get.to(Home());

         },
         addText: "Sing IN",
         ),

       SizedBox(height: 20,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text("for get pasowrd?",style: TextStyle(fontSize: 20),),
            ),
          ],
        )






      ],






     )









      ],),
    );
  }
}