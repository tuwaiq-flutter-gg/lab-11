// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_lab11/Components/Button.dart';
import 'package:sharif_lab11/Components/TextField.dart';
import 'package:sharif_lab11/Controllers/AuthController.dart';
import 'package:sharif_lab11/Services/Firebase/Authentication.dart';
import 'package:sharif_lab11/src/HomeScreen.dart';

class SignUp extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthController controller = Get.find();
  final _formEmail = GlobalKey<FormState>();
  final _formPassword = GlobalKey<FormState>();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Screen"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, left: 7, top: 100),
                    child: Row(
                      children: [
                        Text(
                          "Sign Up",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is Empty";
                      }
                      if (controller.authError != null) {
                        return controller.authError;
                      }
                      return null;
                    },
                    formKey: _formEmail,
                    title: "Email",
                    controller: email,
                  ),
                  CustomTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is Empty";
                      } else {
                        return null;
                      }
                    },
                    formKey: _formPassword,
                    title: "Password",
                    controller: password,
                  ),
                  CustomButton(
                    title: 'Sign Up',
                    press: () async {
                      var validEmail = _formEmail.currentState!.validate();
                      var validPassword =
                          _formPassword.currentState!.validate();
                      if (validEmail && validPassword) {
                        await Authentication.emailSignUp(
                            email: email.text, password: password.text);
                        if (_formEmail.currentState!.validate()) {
                          Get.delete<AuthController>();
                          Get.offAll(() => Home());
                        }
                      }
                      controller.authError = null;
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Already Signed Up? '),
                          Text(
                            "Log In",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
