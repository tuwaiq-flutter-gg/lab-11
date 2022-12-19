import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import '../main.dart';

class start extends GetxService{

  checkUser()async{
    var inst= FirebaseAuth.instance;
    var user=inst.currentUser?.uid;
    if(user?.isEmpty==false){

      
      print(user);

     await share?.setString("id", user!);
      print( share?.get("id"));
    }

  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUser();
  }
}