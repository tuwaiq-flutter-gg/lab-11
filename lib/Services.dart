import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hadeel_lab11/controllers/userController.dart';

import 'package:hadeel_lab11/main.dart';

class Services extends GetxService {
  userController controller = Get.put(userController());
  checkUser() {
    var userID = FirebaseAuth.instance.currentUser?.uid;
    var CreationDate = FirebaseAuth.instance.currentUser?.metadata.creationTime;
    var Email = FirebaseAuth.instance.currentUser?.email;
    print(userID);

    if (userID?.isEmpty == false) {
      controller.ID = userID;
      controller.creationDate = CreationDate.toString();
      controller.email = Email;
      controller.update();
      GetStorage().write("ID", userID);
      // GetStorage().write("CreationDate", CreationDate.toString());
      // GetStorage().write("Email", Email!);
      // prefs?.setString("ID", userID!);
      // prefs?.setString("CreationDate", CreationDate! as String);
      // prefs?.setString("Email", Email!);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUser();
  }
}
