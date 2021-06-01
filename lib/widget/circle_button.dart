import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final IconData icon;
  final Color bordercolor;
  final Color textcolor;
  final Color bgbutton;
  const CircleButton({
    Key key,
    @required this.onTap,
    @required this.text,
    this.icon,
    this.textcolor,
    @required this.bordercolor,
    this.bgbutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
            color: bgbutton,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: bordercolor)),
        child: Center(
          child: icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      icon,
                      color: bordercolor,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: textcolor != null ? textcolor : bordercolor,
                        fontSize: 12,
                        fontFamily: "RobotoBold",
                      ),
                    )
                  ],
                )
              : Container(
                  // width: 120,
                  // height: 40,
                  // color: color,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textcolor != null ? textcolor : bordercolor,
                      fontSize: 14,
                      fontFamily: "RobotoBold",
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
