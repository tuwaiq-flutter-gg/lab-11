import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "Welcome": "Welcome",
          "Email": "Email",
          "Now Email": "Now Email",
          "User Name": "User Name",
          "Password": "Password",
          "Terms & Conditions": "Terms & conditions",
          "Login": "Login",
          "Sign Up": "Sign Up",
          "Create new account": "Create new account",
          "re-enter password": "re-enter password",
          "Done": "Done",
          "Close": "Close",
          "Change your email": "Change your email",
        },
        "ar_SA": {
          "Welcome": "مرحبا",
          "Email": "البريد الالكتروني",
          "User Name": "اسم المستخدم",
          "Password": "كلمة المرور",
          "Terms & Conditions": "الشروط و الأحكام",
          "Login": "تسجيل الدخول",
          "Sign Up": "تسجيل دخول جديد",
          "Create new account": "إنشاء حساب جديد",
          "re-enter password": "أعد كلمة المرور",
          "Done": "تم",
          "Close": "الغاء",
          "Change your email": "غير بريدك الالكتروني",
        }
      };
}
