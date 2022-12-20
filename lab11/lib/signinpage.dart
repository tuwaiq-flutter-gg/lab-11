import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab11/components/buttons.dart';
import 'package:lab11/components/textField.dart';
final Color backcolorMain  = Color.fromARGB(255, 18, 3, 78);

class signinpage extends StatelessWidget {
   signinpage({super.key});
TextEditingController earController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
          SizedBox(height: 222,),

                 textTitle(key: null,texTitle: "Username",),
                textField(                  
                  titlee: 'Username', isPass: true, myController: earController
                  ),
                textTitle(key: null,texTitle: "Password",),
                textField(                  
                  titlee: 'Password', isPass: true, myController: earController
                  ),

                buttons(
                  
                  buttonCaption: "Sign in",
                 onPressed: () {
                  Get.to(() => signinpage());
                },
)
 ],)
    );
  }
}