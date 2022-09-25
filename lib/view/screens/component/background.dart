import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //this line privide us total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset("lib/assets/images/main_top.png"),
            width: size.width * 0.3,
            top: 0,
            left: 0,
          ),
          //--------------------------
          Positioned(
            child: Image.asset("lib/assets/images/main_bottom.png"),
            bottom: 0,
            left: 0,
            width: size.width * 0.2,
          ),
          child,
        ],
      ),
    );
  }
}
