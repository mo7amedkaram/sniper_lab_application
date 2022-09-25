import 'package:get/get.dart';
import 'package:sniper_lab_application/view/screens/sekertar_screen.dart';
import 'package:sniper_lab_application/view/screens/welcome_screen.dart';

class AppRoutes {
  static const welcome = "/WelcomeScreen";

  static final routes = [
    GetPage(name: "/WelcomeScreen", page: () => WelcomeScreen()),
    GetPage(name: "/SekertarScreen", page: () => SekertarScreen()),
  ];
}
