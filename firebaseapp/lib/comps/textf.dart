import 'package:flutter/material.dart';

class Textf extends StatelessWidget {
  Textf ({
    super.key,
    required this.Texts,
    required this.controllersign
  });
  final String Texts;
    TextEditingController? controllersign;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
        controller:controllersign ,
        decoration: InputDecoration(
          hintText: Texts,
          filled: true,
          fillColor: Color.fromARGB(66, 228, 126, 241),
        ),
      ),
    );
  }
}
