import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_lab11/files/Components/BBar.dart';
import 'package:salem_lab11/files/Components/Spacing.dart';
import 'package:salem_lab11/files/Components/Txtf.dart';
import 'package:salem_lab11/files/Controller/controller.dart';
import 'package:salem_lab11/files/Screens/Login.dart';
import 'package:salem_lab11/main.dart';
import 'package:salem_lab11/services/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  MyDataController dataController = Get.put(MyDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myorange,
      ),
      body: Column(
        children: [
          Spacing(height: 30),
          Text(auth.currentUser!.uid),
          Spacing(height: 30),
          Text(auth.currentUser!.email!),
          Spacing(height: 30),
          Text(auth.currentUser!.metadata.creationTime.toString()),
          Spacing(height: 150),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Txtf(
                hint: "New Email",
                arTxt: dataController.arTxt,
                contr: dataController.newEmail),
          ),
          Spacing(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                resetEmail();
                dataController.update();
                Get.defaultDialog(
                    title: "Success",
                    content: Text(
                        "You've changed your email, sign in again with your new email"),
                    actions: [
                      IconButton(
                          onPressed: () {
                            Get.offAll(Signin());
                          },
                          icon: Icon(Icons.done))
                    ]);
              },
              child: Bbar(
                  bname: "Update Email",
                  textcolor: Colors.white,
                  bcolor: myorange),
            ),
          )
        ],
      ),
    );
  }
}
