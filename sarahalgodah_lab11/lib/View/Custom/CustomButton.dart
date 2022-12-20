import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.onPressed, this.buttonText});

   void Function()? onPressed;
   String? buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed , 
      child: Text(buttonText!.toString()));
  }
}