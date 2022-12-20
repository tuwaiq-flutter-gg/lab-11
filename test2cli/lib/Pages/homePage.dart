import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2cli/servas/firebase/AnonymouslySinIn.dart';
import 'package:test2cli/servas/firebase/Auth/EmailPassword.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController? updatEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: Get.height / 3,
              width: Get.width - 20,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " ID: ${printUsrId()} ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    " Email: ${printEmail()} ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    " Data: ${printdata()} ",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            TextButton(
              child: Text("Log Out"),
              onPressed: (() {
                LogOut();
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: updatEmail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'update Email',
                ),
                // controller: cPassword,
              ),
            ),
            TextButton(
              child: Text("update Email"),
              onPressed: (() async {
                await update(UEmail: updatEmail!.text);
              }),
            )
          ],
        ),
      ),
    );
  }
}
