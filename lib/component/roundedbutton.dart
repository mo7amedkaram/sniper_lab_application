import 'package:flutter/material.dart';
import 'package:sniper_lab_application/constants/color_theme.dart';

class RoundedButtom extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, colorText;
  const RoundedButtom({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.colorText = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          color: color,
          onPressed: () {
            press();
          },
          child: Text(
            text,
            style: TextStyle(color: colorText, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
