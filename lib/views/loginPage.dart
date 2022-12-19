import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rakan_lab11/controllers/singinController.dart';
import 'package:rakan_lab11/router/router.dart';
import 'package:rakan_lab11/views/components/MainTextField.dart';

Locale Local_Lang = const Locale("ar", "SA");

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  signinController c_signinController =
      Get.put(signinController(), permanent: true);
  final GlobalKey<FormState> _userKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool? checkValue = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login".tr),
        actions: [
          IconButton(
              onPressed: () {
                if (Local_Lang.languageCode == "ar") {
                  Local_Lang = const Locale("en", "US");
                } else {
                  Local_Lang = const Locale("ar", "SA");
                }
                Get.updateLocale(Local_Lang);
              },
              icon: const Icon(Icons.language))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainTextField(
              hintText: "Email".tr,
              formKey: _userKey,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (value) {
                c_signinController.email = value;
              },
            ),
            const SizedBox(height: 10),
            MainTextField(
              hintText: "Password".tr,
              formKey: _passwordKey,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (value) {
                c_signinController.password = value;
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                GetBuilder<signinController>(
                  builder: (_) => Checkbox(
                    value: c_signinController.checkValue,
                    onChanged: (_) => c_signinController.changeCheckValue(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Terms & Conditions".tr),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                c_signinController.signInWithEmailAndPassword();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(Get.width, 50),
              ),
              child: Text("Login".tr),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouterName.signUpPage);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(Get.width, 50),
              ),
              child: Text("Create new account".tr),
            ),
          ],
        ),
      ),
    );
  }
}
