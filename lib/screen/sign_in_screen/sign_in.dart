import 'package:chomka/constant/theme_constant.dart';
import 'package:chomka/screen/get_start_screen/getstart_screen.dart';
import 'package:chomka/widget/circle_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset(
                  "asset/Mask_Group.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Get your groceries",
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'RobotoBlack',
                            color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "with Chomka",
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'RobotoBlack',
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: CountryCodePicker(
                        initialSelection: "+855",
                        textStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                          fontFamily: "RobotoBold",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // Sign In Button

              CircleButton(
                onTap: () {
                  print("Sign In");
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: StartScreen(),
                    ),
                  );
                },
                text: "Sign In",
                bordercolor: backgroundsplash,
                bgbutton: backgroundsplash,
                textcolor: Colors.white,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or connect with social media",
                    style: TextStyle(
                      fontFamily: "RobotoMedium",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Google Button
                    CircleButton(
                      onTap: () {
                        print("Google");
                      },
                      text: "OOGLE",
                      icon: FontAwesomeIcons.google,
                      bordercolor: Color(0xff5383EC),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(fontFamily: "RobotoMedium"),
                    ),
                    // FaceBook Button
                    CircleButton(
                      onTap: () {
                        print("facebook");
                      },
                      icon: FontAwesomeIcons.facebookF,
                      text: "ACEBOOK",
                      bordercolor: Color(0xff4A66AC),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
