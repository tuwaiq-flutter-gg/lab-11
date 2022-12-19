

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
class TextBut extends StatelessWidget {
  const TextBut( {super.key, this.OnPree, this.addText});
  final OnPree;
  final addText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 380,
      child: ElevatedButton(onPressed: OnPree, child: Text(addText.toString()),
       style: TextButton.styleFrom(primary:
                 Color.fromARGB(255, 13, 13, 13),
                 
                 
              
                 
                 padding:
                   EdgeInsets.symmetric(horizontal: 130,vertical: 15),
                   shape: RoundedRectangleBorder
                    (borderRadius: BorderRadius.circular(25))
                   ),
    
    ));
  }}
// }
// padding:
//                    EdgeInsets.symmetric(horizontal: 130,vertical: 15),
//                    shape: RoundedRectangleBorder
//                    (borderRadius: BorderRadius.circular(25)),