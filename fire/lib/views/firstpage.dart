import 'package:fire/Services/fireBase/annoynumousSignIn.dart';
import 'package:fire/Services/fireBase/folder/EmailPass.dart';
import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
   firstPage({super.key});
TextEditingController controller1=TextEditingController(), controller2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          TextField(controller:controller1 , decoration: InputDecoration(
            label: Text("email") 
          ),),  
          
               TextField(controller:controller2, decoration: InputDecoration(
            label: Text("password") 
          ),),  


          ElevatedButton(onPressed: (){

           loginWithPass(email: controller1.text, password: controller2.text);
          }, child: Text("Sign In"))
        ],
      ),
    );
  }
}