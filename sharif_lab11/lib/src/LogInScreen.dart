// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_lab11/Components/Button.dart';
import 'package:sharif_lab11/Components/TextField.dart';
import 'package:sharif_lab11/Controllers/AuthController.dart';
import 'package:sharif_lab11/Services/Firebase/Authentication.dart';
import 'package:sharif_lab11/src/HomeScreen.dart';
import 'package:sharif_lab11/src/SignUpScreen.dart';

class LogIn extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthController controller = Get.put(AuthController());
  final _formEmail = GlobalKey<FormState>();
  final _formPassword = GlobalKey<FormState>();

  LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in Screen"),
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
                          "Log in",
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
                      // if (!RegExp(r'\w+@\w+\.\w+').hasMatch(value)) {
                      //   return "Invalid Email";
                      // }
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
                    title: 'Log in',
                    press: () async {
                      var validEmail = _formEmail.currentState!.validate();
                      var validPassword =
                          _formPassword.currentState!.validate();
                      if (validEmail && validPassword) {
                        await Authentication.emailLogIn(
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
                        Get.to(() => SignUp());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('New Here? '),
                          Text(
                            "Sign up",
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
