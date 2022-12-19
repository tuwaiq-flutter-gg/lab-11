import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginTextFiled extends StatelessWidget {
  const LoginTextFiled({super.key, required this.labelt, required this.formkey, required this.controller});
  final String labelt;
  final GlobalKey formkey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Form(
        key: formkey,
        child: TextFormField(
          controller: controller,
          autovalidateMode:AutovalidateMode.onUserInteraction ,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "is null";
            }
          },
          decoration: InputDecoration(
              labelText: labelt.toString(),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ),
    );
  }
}
