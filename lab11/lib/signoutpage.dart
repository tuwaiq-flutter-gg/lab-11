import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab11/components/buttons.dart';
import 'package:lab11/components/colors.dart';
import 'package:lab11/components/textField.dart';

class signinpage extends StatelessWidget {
   signinpage({super.key});
TextEditingController earController0=TextEditingController();
TextEditingController earController1=TextEditingController();
TextEditingController earController2=TextEditingController();
TextEditingController earController3=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      ListView(

        children: [
          SizedBox(height: 222,),

                 textTitle(key: null,texTitle: "Full Name",),
                 textField(titlee: 'Full Name', myController: earController0),
                  textTitle(key: null,texTitle: "Email",),
                textField(titlee: 'Email', myController: earController1,),
                 textTitle(key: null,texTitle: "Username",),
                 textField(titlee: 'Username', myController: earController2),
                  textTitle(key: null,texTitle: "Password",),
                textField(titlee: 'Password', isPass: true, myController: earController3),

                buttons(buttonCaption: "Sign in",),
                InkWell(child: Text("sign up"),
                onTap: () {
                  Get.to(() => signinpage());
                },),


        ],
      )
       

    
    );
  }
}


