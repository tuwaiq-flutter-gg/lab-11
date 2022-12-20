import 'package:flutter/material.dart';
import 'package:lab11/components/colors.dart';


Padding textField({required String titlee,bool isPass=false, required TextEditingController myController}) {
    return Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextField(
            obscureText: isPass,
            cursorRadius: Radius.circular(22),
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              ),
              fillColor: Color.fromARGB(255, 234, 235, 234),
              filled: true,
              
              focusColor: backcolorMain,
              labelText: titlee,
            ),
          )
          

                );
  }

class textTitle extends StatelessWidget {
  const textTitle({super.key, this.texTitle});
final texTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: 
      Text(texTitle, style: TextStyle(color:Colors.black, fontSize: 22,fontWeight: FontWeight.bold,),),
    
    );
  }
}
