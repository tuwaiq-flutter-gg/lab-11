import 'package:faisal_lab11/Controller1/UserController.dart';
import 'package:faisal_lab11/View/UserInfo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

UserCredential? credential;
UserController controller = Get.find();
emailSignup({required String emailAddress, required String password}) async {
  try {
    print("HI11");
    print(emailAddress);
    print(password);

    credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    Get.to(USerInfo());
    controller.uid = credential!.user!.uid;
    controller.creationDate = credential!.user!.metadata.creationTime ;

    print("creation email");
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

signunwithemail({required String email, required String password}) async {
  try {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (user.user!.uid != null) {
      controller.uid = user.user!.uid;
      controller.creationDate = user.user!.metadata.creationTime;

      Get.to(() => USerInfo());
    } else {
      print("INvalid info");
      Get.defaultDialog(middleText: "Invalid info");
    }
  } catch (e) {
    print(e);
  }
}

Future ubdatingemail({required String email}) async {
  try {
    await FirebaseAuth.instance.currentUser!.updateEmail(email);
  } catch (e) {
    print(e);
  }
}
