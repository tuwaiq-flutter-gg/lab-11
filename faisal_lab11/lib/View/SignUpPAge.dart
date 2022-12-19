import 'package:faisal_lab11/Comp/button.dart';
import 'package:faisal_lab11/Comp/signup.dart';
import 'package:faisal_lab11/Controller1/UserController.dart';
import 'package:faisal_lab11/View/LoginPAge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  UserController controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUP page"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          signupform(
            onPressed: () {
              controller.createaccount();
            },
            email: controller.Emailcon,
            pass: controller.Passcon,
          ),
          SizedBox(
            height: 50,
          ),
          button(
            title: "GoTO Login Page",
            onPressed: () {
              Get.offAll(() => loginpage());
            },
          )
        ],
      ),
    );
  }
}
