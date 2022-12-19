// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_lab11/Components/Button.dart';
import 'package:sharif_lab11/Components/TextField.dart';
import 'package:sharif_lab11/Components/UnEditableTextField.dart';
import 'package:sharif_lab11/Controllers/AuthController.dart';
import 'package:sharif_lab11/Services/Firebase/Authentication.dart';
import 'package:sharif_lab11/src/LogInScreen.dart';

class Home extends StatelessWidget {
  TextEditingController userID =
      TextEditingController(text: Authentication.instance.currentUser?.uid);
  TextEditingController userCreation = TextEditingController(
      text: Authentication.instance.currentUser?.metadata.creationTime
          .toString());
  TextEditingController userEmail =
      TextEditingController(text: Authentication.instance.currentUser?.email);
  final _formEmail = GlobalKey<FormState>();
  AuthController controller = Get.put(AuthController());
  AuthController controller44 = Get.put(AuthController());

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => LogIn());
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => ListView(
          padding: EdgeInsets.all(25),
          children: [
            UnEditableTextField(
              title: "User ID",
              controller: userID,
            ),
            UnEditableTextField(
              title: "User Creation Date",
              controller: userCreation,
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
              title: "User Email",
              controller: userEmail,
            ),
            CustomButton(
              title: 'Update Email',
              press: () async {
                var validEmail = _formEmail.currentState!.validate();
                if (validEmail) {
                  await Authentication.updateEmail(newEmail: userEmail.text);
                  if (!_formEmail.currentState!.validate()) {
                    userEmail.text =
                        Authentication.instance.currentUser!.email!;
                  }
                }
                controller.authError = null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
