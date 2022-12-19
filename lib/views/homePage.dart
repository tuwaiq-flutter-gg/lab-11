import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rakan_lab11/controllers/singinController.dart';
import 'package:rakan_lab11/router/router.dart';
import 'package:rakan_lab11/views/components/MainTextField.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  signinController c_signinController = Get.put(signinController());
  GlobalKey<FormState> _emailKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome".tr),
          actions: [
            IconButton(
              onPressed: () {
                c_signinController.signOut();
                Get.offAllNamed(RouterName.loginPage);
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              GetBuilder<signinController>(
                builder: (_) => Text(
                  c_signinController.email,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.dialog(AlertDialog(
                      content: MainTextField(
                        hintText: "Email".tr,
                        formKey: _emailKey,
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
                      actions: [
                        TextButton(
                          child: Text("Done".tr),
                          onPressed: () {
                            c_signinController.updateUserEmail();
                            c_signinController.update();
                            Get.back();
                          },
                        ),
                        TextButton(
                          child: Text("Close".tr),
                          onPressed: () => Get.back(),
                        ),
                      ],
                    ));
                  },
                  child: Text("Change your email".tr))
            ],
          ),
        ));
  }
}
