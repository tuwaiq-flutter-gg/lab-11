import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonCom extends StatelessWidget {
  const ButtonCom(
      {super.key,
      required this.ButtonName,
      required this.OnPressed,
      required this.Color,
      required this.NameColor});
  final String ButtonName;
  final NameColor;
  final OnPressed;
  final Color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: OnPressed,
      child: Text(
        ButtonName,
        style: TextStyle(fontSize: 20, color: NameColor),
      ),
      style: ElevatedButton.styleFrom(
          primary: Color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
