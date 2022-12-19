import 'package:faisal_lab11/Comp/UserEditing.dart';
import 'package:faisal_lab11/Controller/UserController.dart';
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
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text("Your Email"),
          ),
          edit(
            emailecitcontroller: controller.Emailcon,
            email: controller.Emailcon.text,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
