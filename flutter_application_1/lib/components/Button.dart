import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonC extends StatelessWidget {
  const ButtonC({super.key, required this.onPressed, required this.childs});
  final Function() onPressed;
  final Widget childs;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              fixedSize: Size(300, 40)),
          onPressed: onPressed,
          child:childs ),
    );
  }
}
