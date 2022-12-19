import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab11/Services/FireBase/email_authentication.dart';
import 'package:shatha_lab11/controller/my_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {

    final myController controller = Get.put(myController());
    
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
    
          Column(
            children: [

              const SizedBox(height: 10,),
              
              const Center(child: Text('email :'),),
              Center(child: TextField(controller: controller.email,),),

              const SizedBox(height: 10,),

              const Center(child: Text('password :'),),
              Center(child: TextField(controller: controller.password,),),

              const SizedBox(height: 10,),

              Center(child: ElevatedButton(onPressed: () {
                createAccount(email: controller.email.text, password: controller.password.text);
              }, child: const Text('Log in with new user')),),

              const SizedBox(height: 10,),

              Center(child: ElevatedButton(onPressed: () {
                loginWithEmail(email: controller.email.text, password: controller.password.text);
              }, child: const Text('Log in with old user')),),

              const SizedBox(height: 10,),
    
            ],
          ),
    
        ]),
      ),
    );
  }
}