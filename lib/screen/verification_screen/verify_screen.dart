import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:page_transition/page_transition.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  get _buildAppBar {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
          print("Back ");
        },
        child: Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }

  get _buildBody {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Enter your 4-digit code",
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Code",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff7C7C7C),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                  hintText: "- - - -",
                  hintStyle: TextStyle(fontSize: 19, letterSpacing: 5)),
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    print("Resend Code");
                  },
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      color: Color(0xff53B175),
                      fontSize: 16,
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xff53B175),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: null,
                        ),
                      );
                      print("Done");
                    },
                    child: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
