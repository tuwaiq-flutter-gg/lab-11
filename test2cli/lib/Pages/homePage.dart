import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2cli/servas/firebase/AnonymouslySinIn.dart';
import 'package:test2cli/servas/firebase/Auth/EmailPassword.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
         
          children: [
            Text( " ID: ${printUsrId()} ",style: TextStyle(fontSize: 20),),
            Text( " Email: ${printEmail()} ",style: TextStyle(fontSize: 20),),
             Text( " Data: ${printdata()} ",style: TextStyle(fontSize: 20),),
             
            TextButton(
              child: Text("Log Out"),
              onPressed: (() {
                LogOut();
              }),
            ),
          ],
        ),
      ),
    );
  }
}