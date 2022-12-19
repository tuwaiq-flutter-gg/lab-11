import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Route/NameRoute.dart';
import 'package:flutter_application_1/Services/Add_Acoount.dart';
import 'package:flutter_application_1/Services/Login_S.dart';
import 'package:flutter_application_1/components/Button.dart';
import 'package:flutter_application_1/components/RowChoes.dart';
import 'package:flutter_application_1/components/TextFiled.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Login1 extends StatelessWidget {
  Login1({super.key});
  final _formkeyEmail = GlobalKey<FormState>();
  final _formkeyPassword = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(227, 186, 186, 245),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: Get.width,
            height: 600,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Login".tr,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                LoginTextFiled(
                  labelt: "Enter Email".tr,
                  formkey: _formkeyEmail,
                  controller: controllerEmail,
                ),
                LoginTextFiled(
                  labelt: "Enter Password".tr,
                  formkey: _formkeyPassword,
                  controller: controllerPassword,
                ),
                RowForgetpass(
                    name_f: "Forget Password?".tr,
                    name_c: "I agree to the terms and privacy".tr),
                ButtonC(
                  onPressed: (() {
                    if (!_formkeyEmail.currentState!.validate() &&
                        !_formkeyPassword.currentState!.validate()) {
                      return;
                    }
                    signInWithEmail(
                        email: controllerEmail.text,
                        password: controllerPassword.text);
                  }),
                  childs: Text("Login".tr),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: (() {
                          var loc = Locale("en", "US");
                          Get.updateLocale(loc);
                        }),
                        icon: Icon(Icons.language)),
                    Text("En"),
                    IconButton(
                        onPressed: (() {
                          var loc = Locale("ar", "SA");
                          Get.updateLocale(loc);
                        }),
                        icon: Icon(Icons.language)),
                    Text("SA")
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
