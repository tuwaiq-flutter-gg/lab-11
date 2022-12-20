import 'package:flutter/material.dart';
import 'package:lab11/components/colors.dart';

class buttons extends StatelessWidget {
   buttons({super.key, required this.buttonCaption, this.onPressed});
  final String buttonCaption;//final  pageOff;//pageTo;
Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          backgroundColor: backcolorMain,
        ),
        onPressed: onPressed,
       // child: InkWell(
          child: Text(buttonCaption),)
          // // onTap: () {
          // //   Navigator.pop(context, true);
          // },
        // ),
    );
  }
}
