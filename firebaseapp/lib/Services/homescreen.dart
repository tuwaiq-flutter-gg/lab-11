import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/Services/anonsignin.dart';
import 'package:firebaseapp/Services/emailpass.dart';
import 'package:firebaseapp/Services/signin.dart';
import 'package:firebaseapp/comps/textf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

var inst = FirebaseAuth.instance;

class Home extends StatelessWidget {
   Home({super.key});
  final TextEditingController? controllerEmail = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                    onPressed: () {
                      userSignout();
                    },
                    child: Text("Sign Out")),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: TextButton(
                onPressed: () {},
                child: Text("E-mail Reset"),
              )),
              Text(inst.currentUser!.uid.toString()),
              Text(inst.currentUser!.email.toString()),
              Text(inst.currentUser!.metadata.toString()),

              Textf(Texts: "Reset Email", 
              controllersign: controllerEmail
              ),
              SizedBox(height: 50,),
               ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 137, 17, 164)),
                      onPressed: () async {
                        print(controllerEmail?.text);
                        editEmail(
                        
                            Email: controllerEmail!.text,
                            );
                      },
                      child: Center(
                          child: Text("Sign in",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.black)))),
            ],
          )
        ],
      ),
    );
  }
}
