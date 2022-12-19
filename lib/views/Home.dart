import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadeel_lab11/Services.dart';
import 'package:hadeel_lab11/Services/Firebase/SigningIn.dart';
import 'package:hadeel_lab11/components/customTextField.dart';
import 'package:hadeel_lab11/components/primaryButton.dart';
import 'package:hadeel_lab11/constants/style.dart';
import 'package:hadeel_lab11/controllers/userController.dart';
import 'package:hadeel_lab11/views/SignIn.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    userController controller = Get.find();
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.05,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GetBuilder<userController>(builder: (_) {
                      return Text(
                        // textAlign: TextAlign.left,
                        "ID :\n ${controller.ID}\n",
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: colors.Text,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GetBuilder<userController>(builder: (_) {
                      return Text(
                        // textAlign: TextAlign.left,
                        "Email :\n ${controller.email}\n",
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: colors.Text,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GetBuilder<userController>(builder: (_) {
                      return Text(
                        // textAlign: TextAlign.left,
                        "Creation Date :\n ${controller.creationDate}\n",
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: colors.Text,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
          customTextField(
            name: "Update your email",
            isPass: false,
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
              color: colors.icons,
            ),
            keyboardType: TextInputType.emailAddress,
            hint: "Enter your new email",
            controller: controller.newEmailController,
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          primaryButton(
            title: ' Sign out',
            onPressed: () async {
              if (controller.newEmailController.text
                  .toString()
                  .trim()
                  .isNotEmpty)
                updateUserEmail(email: controller.newEmailController.text);

              signOut();
              controller.update();
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => SignIn())));
            },
          ),
        ],
      ),
    );
  }
}
