import 'package:aa/Comp/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Comp/ButtonCom.dart';
import '../Services/allMethod.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Text(
            "The ID: ${printId()}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "The Email: ${printEmail()}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "The Day: ${printCreationDay()}",
            style: TextStyle(fontSize: 20),
          ),
          Column(
            children: [
              Container(
                height: 30,
                width: 280,
                child: Text("Change email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF342927))),
              ),
              Container(
                width: 280,
                height: 50,
                child: TextFieldCom(
                  con: controllerEmail,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 150,
                child: ButtonCom(
                  ButtonName: "change",
                  Color: Color(0xFF8D3545),
                  NameColor: Color(0xFF342927),
                  OnPressed: () {
                    changeEmail(email: controllerEmail.text);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 150,
                child: ButtonCom(
                  ButtonName: "Sign Out",
                  Color: Color(0xFF8D3545),
                  NameColor: Color(0xFF342927),
                  OnPressed: () {
                    signOut();
                  },
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
