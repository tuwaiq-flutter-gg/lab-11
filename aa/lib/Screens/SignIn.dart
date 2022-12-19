import 'package:aa/Services/allMethod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Comp/ButtonCom.dart';
import '../Comp/textField.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 20),
            ),
          ),
          //----------------------------------------------------------------------
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Container(
                height: 30,
                width: 280,
                child: Text("Email",
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
                height: 35,
              ),
              Container(
                height: 30,
                width: 280,
                child: Text("Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF342927))),
              ),
              Container(
                width: 280,
                height: 50,
                child: TextFieldCom(con: controllerPass,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 150,
                child: ButtonCom(
                  ButtonName: "Sign In",
                  Color: Color(0xFF8D3545),
                  NameColor: Color(0xFF342927),
                  OnPressed: () {
                    login(
                        email: controllerEmail.text, pass: controllerPass.text);
                        
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
