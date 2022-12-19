import 'package:faisal_lab11/Comp/button.dart';
import 'package:faisal_lab11/Comp/textfield.dart';
import 'package:faisal_lab11/View/SignUpPAge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class edit extends StatelessWidget {
  edit(
      {super.key,
      required this.emailecitcontroller,
      required this.email,
      this.onPressed});
  final TextEditingController emailecitcontroller;
  final String email;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textfield(co: emailecitcontroller, Title: email),
        button(title: "Change Email", onPressed: onPressed)
      ],
    );
  }
}
