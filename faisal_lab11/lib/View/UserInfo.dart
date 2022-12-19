import 'package:faisal_lab11/Comp/UserEditing.dart';
import 'package:faisal_lab11/Controller1/UserController.dart';
import 'package:faisal_lab11/View/LoginPAge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class USerInfo extends StatelessWidget {
  USerInfo({super.key});
  UserController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page"), centerTitle: true, actions: [
        IconButton(
            onPressed: () {
              Get.offAll(() => loginpage());
            },
            icon: Icon(Icons.logout))
      ]),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text("Your Email"),
          ),
          GetBuilder<UserController>(builder: (_) {
            return edit(
              emailecitcontroller: controller.Emailcon,
              email: controller.Emailcon.text,
              onPressed: () {
                controller.updateemail();
                controller.update();
                Get.defaultDialog(middleText: "You have changed your Email");
              },
            );
          }),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "ID: ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    controller.uid,
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Creation Date: ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    controller.creationDate.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
