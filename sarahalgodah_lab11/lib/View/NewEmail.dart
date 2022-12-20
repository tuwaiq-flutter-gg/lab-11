import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab11/Controller/UserTextField.dart';
import 'package:sarahalgodah_lab11/Model/Auth.dart';
import 'package:sarahalgodah_lab11/View/Custom/CustomButton.dart';
import 'package:sarahalgodah_lab11/View/Custom/CustomTextField.dart';

class NewEmail extends StatelessWidget {
   NewEmail({super.key});
     Auth auth = Auth();
    //  UserTextField userTextFieldFind = Get.find();

TextEditingController newEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomTextField(
                hinText: "New Email",
                controllerOfClass:newEmail,
              ),
              CustomButton(
                buttonText: "Update",
                onPressed: (){
              auth.updateEmail(email: newEmail );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}