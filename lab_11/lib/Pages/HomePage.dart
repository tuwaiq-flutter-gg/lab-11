import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab_11/Firebase/Email/Password.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController newEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(50),
          child: ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("User ID: ${FirebaseAuth.instance.currentUser!.uid}"),
              Text("User Email: ${FirebaseAuth.instance.currentUser!.email}"),
              Text(
                  "User Creation Day: ${FirebaseAuth.instance.currentUser!.metadata.creationTime.toString()}"),
              TextField(
                controller: newEmailController,
                decoration: InputDecoration(label: Text("New Email")),
              ),
              ElevatedButton(
                  onPressed: () {
                    UpdateingEmail(newEmail: newEmailController.text);
                  },
                  child: Text("chenging Email"))
            ],
          )),
    );
  }
}
