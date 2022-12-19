import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../comps/textf.dart';
import 'emailpass.dart';

class SignIn extends StatelessWidget {
  SignIn({
    super.key,
  });
  final TextEditingController? controllerEmail = TextEditingController();
  final TextEditingController? controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Center(
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 62, 36, 207)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Textf(
                  Texts: "email",
                  controllersign: controllerEmail,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Textf(
                  Texts: "pass",
                  controllersign: controllerPassword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Get.width / 55),
                      child: Checkbox(
                        value: false,
                        onChanged: (bool) {},
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          children: [
                            Text("agree"),
                            TextButton(onPressed: () {}, child: Text("terms")),
                            Text("and"),
                            TextButton(
                                onPressed: () {}, child: Text("Privacy")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: Get.width / 20, bottom: Get.width / 30),
                padding:
                    EdgeInsets.only(right: Get.width / 4, left: Get.width / 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 137, 17, 164)),
                      onPressed: () async {
                        print(controllerEmail?.text);
                        signInWithEmail(
                        
                            email: controllerEmail!.text,
                            password: controllerPassword!.text);
                      },
                      child: Center(
                          child: Text("Sign in",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.black)))),
                ),
              ),
            ],
          )),
    );
  }
}
