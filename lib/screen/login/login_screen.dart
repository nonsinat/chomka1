import 'package:chomka/screen/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hidden;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _hidden = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "asset/logo/logokarot.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "RobotoMedium",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Enter your emails and password",
                        style: TextStyle(
                            color: Color(0xff7C7C7C),
                            fontSize: 15,
                            fontFamily: "RobotoRegular"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 15,
                                  fontFamily: "RobotoMedium"),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 14),
                                hintText: "Enter your Email "),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 15,
                                  fontFamily: "RobotoMedium"),
                            ),
                          ),
                          TextFormField(
                            obscureText: !_hidden,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _hidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _hidden = !_hidden;
                                    });
                                  },
                                ),
                                hintStyle: TextStyle(fontSize: 14),
                                hintText: "Enter your password "),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Forgot password ??");
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot password ?",
                                style: TextStyle(fontFamily: "RobotoBold"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Login");
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 65,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                color: Color(0xff53B175),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "RobotoMedium",
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account ? "),
                              InkWell(
                                onTap: () {
                                  print("Sign up");
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  " Sign up",
                                  style: TextStyle(
                                    color: Color(0xff53B175),
                                    fontFamily: "RobotoBold",
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
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
