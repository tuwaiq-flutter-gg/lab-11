


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TixsetFiled extends StatelessWidget {
   TixsetFiled({super.key,  this.hintText,required this.controller,  this.texst});
   final  String? texst;
TextEditingController? controller;
  
  final  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 380,
       padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: 
                      Color.fromARGB(255, 219, 215, 215),
                      borderRadius: BorderRadius.circular(25)),
       child: TextField(

         //autovalidateMode: AutovalidateMode.onUserInteraction,

                          controller: controller,
                          decoration: InputDecoration(
                            border:InputBorder.none,
                           hintText: hintText




       ),
      



      
    ));
  }
}