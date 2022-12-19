import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Services/Add_Acoount.dart';
import 'package:flutter_application_1/Services/Login_S.dart';
import 'package:flutter_application_1/components/Button.dart';
import 'package:flutter_application_1/components/TextFiled.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controllerEmailUpdaet = TextEditingController();
  final _formkeyEmail = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                funcSignout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: Get.width,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF)),
            child: Column(
              children: [
                Text(
                  "Home",
                  style: TextStyle(fontSize: 28),
                ),
                Text("${getID()} your ID"),
                Text("${getEmail()} your Email"),
                Text("${getDay()}"),
                LoginTextFiled(
                  controller: controllerEmailUpdaet,
                  labelt: "Your new email",
                  formkey: _formkeyEmail,
                ),
                ButtonC(
                  childs: Text("Updaet your email"),
                  onPressed: () {
                    updateUserEmail(enteredEmail: controllerEmailUpdaet);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
