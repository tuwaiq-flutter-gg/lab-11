




import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab11/Servic/AnoMOStlly.dart';
import 'package:lab11/Servic/Emeilandapasword.dart';
import 'package:lab11/componet/Button.dart';
import 'package:lab11/componet/TixstFiled.dart';

class Home extends StatelessWidget {
   Home({super.key});
  TextEditingController? controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child:ListView(
        children:[


           Container(child:
          
           
         Center(
           child: Column(
             children: [
              SizedBox(height: 100,),
             Text( upId()),
             SizedBox(height: 20,),
              Text( upEmail().toString()),
              SizedBox(height: 20,),
              Text(upPasword().toString()),
              SizedBox(height: 20,),
               TextBut(OnPree: (){
                funcSignnout();
                 Get.to(Home());
              }
                ,addText:"Sing OUT"
                ),
                SizedBox(height: 10,),
                 TixsetFiled(controller: controllerEmail,
                 texst:"Updeat Email",hintText: "Enter New Email",),
                 TextBut(OnPree: (){
                  updait(email:controllerEmail!.text );

                 },addText: "Updeat Email",)

                
          
               
               ] ,)
          
          
          
              
             ,
           ),
         ),
        ]
      ),
    )


    )

      
     

    ;
  }
}