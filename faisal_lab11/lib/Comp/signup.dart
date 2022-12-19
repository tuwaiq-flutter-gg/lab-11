import 'package:faisal_lab11/Comp/button.dart';
import 'package:faisal_lab11/Comp/textfield.dart';
import 'package:faisal_lab11/View/UserInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class signupform extends StatelessWidget {
  signupform({super.key, required this.email, required this.pass, this.onPressed});
  final TextEditingController email;
  final TextEditingController pass;
  final Function()? onPressed;

 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Enter Email"),
        ),
        textfield(co: email, Title: "Email"),
        Center(
          child: Text("Enter Password"),
        ),
        textfield(co: pass, Title: "Password"),
        button(
          title: "SignUp",
          onPressed: onPressed,
        ),
      ],
    );
  }
}
