import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sniper_lab_application/component/roundedbutton.dart';
import 'package:sniper_lab_application/component/textroundedfield.dart';
import 'package:sniper_lab_application/constants/color_theme.dart';
import 'package:sniper_lab_application/controller/sign_in_controller.dart';
import 'package:sniper_lab_application/routes/routes.dart';
import 'package:sniper_lab_application/view/screens/sekertar_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //-----------
    TextEditingController userName = TextEditingController();

    TextEditingController password = TextEditingController();

    SignInController controller = Get.put(SignInController());

//--------

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "تسجيل الدخول",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                "lib/assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              TextRoundedField(
                controller: userName,
                hintText: "اسم المستخدم",
                icon: Icons.person,
              ),
              SizedBox(
                height: 10,
              ),
              TextRoundedField(
                controller: password,
                hintText: "كلمة المرور",
                icon: Icons.lock,
                obsText: true,
              ),
              SizedBox(
                height: 20,
              ),
              GetBuilder<SignInController>(
                builder: (controller) => RoundedButtom(
                  press: () {
                    String sekName = userName.text.toLowerCase().trim();
                    String sekPassword = password.text;
                    controller.signIn(sekName, sekPassword);
                  },
                  text: "دخول",
                  color: kPrimaryColor,
                  colorText: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.75,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class Background extends StatelessWidget {
  final child;
  const Background({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset("lib/assets/images/main_top.png"),
            width: size.width * 0.35,
          ),
          //-----------------------
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("lib/assets/images/login_bottom.png"),
            width: size.width * 0.3,
          ),
          child,
        ],
      ),
    );
  }
}
