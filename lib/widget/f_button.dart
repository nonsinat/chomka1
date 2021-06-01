import 'package:chomka/constant/theme_constant.dart';
import 'package:flutter/material.dart';

class FButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const FButton({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: defaultPadding),
        width: 350,
        height: 70,
        decoration: BoxDecoration(
          color: backgroundsplash,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: title,
            color: textcolor,
            fontFamily: "RobotoBlack",
          ),
        ),
      ),
    );
  }
}
