import 'package:faisal_lab11/Comp/button.dart';
import 'package:faisal_lab11/Comp/textfield.dart';
import 'package:faisal_lab11/Controller1/UserController.dart';
import 'package:faisal_lab11/View/SignUpPAge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});
  UserController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPAge"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 45,
          ),
          textfield(co: controller.Emailcon, Title: "Emial"),
          textfield(co: controller.Passcon, Title: "passwrod"),
          SizedBox(
            height: 30,
          ),
          button(
            title: "SignIn",
            onPressed: () {
              controller.signinmethod();
            },
          ),
          SizedBox(
            height: 30,
          ),
          button(
            title: "SIgnUp Page",
            onPressed: () {
              Get.offAll(() => SignUpPage());
            },
          )
        ],
      ),
    );
  }
}
