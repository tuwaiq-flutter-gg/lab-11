import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shatha_lab11/Services/FireBase/email_authentication.dart';
import 'package:shatha_lab11/controller/my_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final myController controller = Get.find();

    return SafeArea(
      child: Scaffold(
    
        body: ListView(
          children: [
            const SizedBox(height: 10,),

            const Center(child: Text('Welcome !'),),

            const SizedBox(height: 10,),

            const Center(child: Text('enter your new email : '),),

            Center(child: Center(child: TextField(controller: controller.newEmail,),),),

            const SizedBox(height: 10,),

            Center(child: ElevatedButton(onPressed: () {
              updateUserEmail(enteredEmail: controller.newEmail);
            }, child: const Text('update email')),),

            const SizedBox(height: 10,),

            Center(child: Text('ID :'),),
            Center(child: Text(getUserID()),),

            const SizedBox(height: 10,),

            Center(child: Text('Email :'),),
            Center(child: Text(getUserEmail()),),

            const SizedBox(height: 10,),

            Center(child: Text('Creation Day :'),),
            Center(child: Text(getUserCreationDay()),),

          ],
        ),
      ),
    );
  }
}