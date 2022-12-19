import 'package:flutter/material.dart';
import 'package:salem_lab11/main.dart';

class checkBox extends StatefulWidget {
  checkBox({super.key});

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      hoverColor: Colors.orange,
      activeColor: myorange,
      value: this.value,
      onChanged: (value) {
        setState(() {
          this.value = value!;
        });
      },
    );
  }
}
