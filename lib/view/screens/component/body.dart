import 'package:flutter/material.dart';
import 'package:sniper_lab_application/component/roundedbutton.dart';
import 'package:sniper_lab_application/constants/color_theme.dart';
import 'package:sniper_lab_application/view/screens/component/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sniper_lab_application/view/screens/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //this line privide us total height and width of our screen
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              " مرحبا بك في شركة سنايب لتسويق \nالمنتجات الطبية",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "يسعدنا التعامل معك في تقديم خدمة جيدة للمريض",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SvgPicture.asset(
              "lib/assets/icons/chat.svg",
              height: size.width * 0.85,
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButtom(
              text: "تسجيل الدخول",
              color: kPrimaryColor,
              colorText: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LogInScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
