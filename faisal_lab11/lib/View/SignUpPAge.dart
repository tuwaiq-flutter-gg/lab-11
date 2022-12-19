import 'package:faisal_lab11/Comp/signup.dart';
import 'package:faisal_lab11/Controller/UserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  UserController controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
