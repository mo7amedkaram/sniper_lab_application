import 'package:flutter/material.dart';
import 'package:sniper_lab_application/constants/color_theme.dart';
import 'package:sniper_lab_application/view/screens/login_screen.dart';

class TextRoundedField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  //final ValueChanged onChange;
  final bool obsText;
  final controller;
  const TextRoundedField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    this.obsText = false,
    // this.onChange,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        // onChanged: onChange,
        controller: controller,
        obscureText: obsText,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
