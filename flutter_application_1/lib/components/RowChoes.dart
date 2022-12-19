import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowForgetpass extends StatefulWidget {
  RowForgetpass({super.key, required this.name_c, required this.name_f});
   final String name_c;
  final String name_f;

  @override
  State<RowForgetpass> createState() => _RowForgetpassState();
  
}

class _RowForgetpassState extends State<RowForgetpass> {
  
  bool? cheek = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Checkbox(
            value: cheek,
            onChanged: (bool? cheek1) {
              setState(() {
                this.cheek = cheek1;
              });
            }),
        Text(widget.name_c),
        TextButton(onPressed: (() {}), child: Text(widget.name_f)),
      ],
    );
  }
}
