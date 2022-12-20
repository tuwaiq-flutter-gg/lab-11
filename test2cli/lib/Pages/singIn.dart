import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2cli/servas/firebase/Auth/EmailPassword.dart';

class Singin extends StatelessWidget {
  Singin({super.key});

  TextEditingController? cEmail = TextEditingController();
  TextEditingController? cPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  title: Text("Sing In"),),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: cEmail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
                controller: cPassword,
              ),
              ElevatedButton(
                child: Text("Sing In"),
                onPressed: (() {
                  SingInWithEmail(
                      email: cEmail!.text, password: cPassword!.text);
                }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
