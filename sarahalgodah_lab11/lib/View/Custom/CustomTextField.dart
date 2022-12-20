import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.controllerOfClass, this.hinText});
   String? hinText;
   TextEditingController? controllerOfClass;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerOfClass ,
      decoration: InputDecoration(
        hintText: hinText.toString(),
      ),
    );
  }
}