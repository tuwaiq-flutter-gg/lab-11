import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldCom extends StatelessWidget {
  const TextFieldCom({
    super.key, this.con,
  });
  final con;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: con,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
      ),
    );
  }
}
