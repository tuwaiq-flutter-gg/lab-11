import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab11/Model/Auth.dart';
import 'package:sarahalgodah_lab11/Controller/UserTextField.dart';
import 'package:sarahalgodah_lab11/View/Custom/CustomButton.dart';
import 'package:sarahalgodah_lab11/View/Custom/CustomTextField.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  // UserTextField userTextField = Get.put(UserTextField());
    TextEditingController controllerOfEmail = TextEditingController();
  TextEditingController controllerOfPassword = TextEditingController();
  Auth auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: Get.height * 0.70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  hinText: "Email",
                  controllerOfClass: controllerOfEmail,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hinText: "Password",
                  controllerOfClass: controllerOfPassword,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  buttonText: "Sign In", onPressed: () {
                  auth.signInWithEmail(
                    email: controllerOfEmail.text,
                    password: controllerOfPassword.text);
                }),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
