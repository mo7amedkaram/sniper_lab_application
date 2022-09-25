import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sniper_lab_application/constants/color_theme.dart';
import 'package:sniper_lab_application/routes/routes.dart';
import 'package:sniper_lab_application/view/screens/sekertar_screen.dart';

class SignInController extends GetxController {
  var userSekName = "mohamed";
  var userSekPassword = "Ssh12345";
  void signIn(String userName, String password) {
    if (userName == userSekName && password == userSekPassword) {
      Get.toNamed("/SekertarScreen");
      Get.snackbar("تم تسجيل الدخول بنجاح", "تقدر تبدأ شغل دلوقتي \n شكرا ليك",
          backgroundColor: Colors.green, colorText: Colors.white);
    } else if (userName.isEmpty == true || password.isEmpty == true) {
      Get.snackbar(
          "الخانات فارغة !", "لا يمكن تسجيل الدخول بدون كتابة البيانات",
          backgroundColor: Colors.red, colorText: Colors.white);
    } else if (userName != userSekName && password != userSekPassword) {
      Get.snackbar(
          "اسم المستخدم أو كلمة المرور خطأ", "من فضلك أعد المحاولة مرة اخري",
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
