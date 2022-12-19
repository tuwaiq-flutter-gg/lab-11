




import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lab11/main.dart';

class Start extends GetxService{

checkUser()async{

  try{

var inst = FirebaseAuth.instance;
var userId = inst.currentUser?.uid;
if (userId?.isEmpty == false){
  Prefs?.setString("id",userId!);
}
print("User ID");
}catch(error){
print(error);

}

}
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUser();
  }

}