import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab11/Controller/UserTextField.dart';
import 'package:sarahalgodah_lab11/Model/Auth.dart';
import 'package:sarahalgodah_lab11/View/Custom/CustomButton.dart';

UserTextField userTextFieldFind = Get.find();
     Auth auth = Auth();


class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: GetBuilder<Auth>(
            builder: (_) {
              return SizedBox(
                height: Get.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User ID:\n${auth.id} ", style: TextStyle(fontSize: 20),),
                    Text("User Email:\n${auth.email}", style: TextStyle(fontSize: 20),),
                    Text("Creation Day:\n${auth.creationDay}", style: TextStyle(fontSize: 20),),
                    CustomButton(
                        buttonText: "Update Your Email", onPressed: () {
                          Get.toNamed("/NewEmail");
                        }),
                    CustomButton(
                        buttonText: "Sgin Out",
                        onPressed: () {
                          auth.signOutFunction();
                        }),
                  ],
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
