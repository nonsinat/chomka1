
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String valuezone;
  String valuearea;
  List listitem = ['Cambodia', "Thailand", "Vetnam", "Myama", "China"];

  var newValue;
  var newValue1;

  var valueItem;
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
      color: Colors.white,
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Container(
          //   height: 135.5,
          //   alignment: Alignment.topCenter,
          //   width: 178.36,
          //   child: Lottie.asset("asset/lottie/location1.json"),
          // ),
          // Container(
          //   padding: EdgeInsets.only(top: 35),
          //   child: Text(
          //     "Select Your Location",
          //     style: TextStyle(
          //       fontSize: 22,
          //       fontFamily: "RobotoMedium",
          //     ),
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     "Switch on your location to stay in turn with what’s happening in your area",
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 16,
          //       color: Color(0xff7C7C7C),
          //       fontFamily: 'RobotoRegular',
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Lottie.asset("asset/lottie/location1.json", width: 160),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Select Your Location",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "RobotoMedium",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Switch on your location to stay in turn with ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff7C7C7C),
                          fontFamily: 'RobotoRegular',
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "what's happening in your area ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff7C7C7C),
                          fontFamily: 'RobotoRegular',
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Your zone",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff7C7C7C)),
                          ),
                        ),
                        DropdownButton(
                          hint: Text("Select Your Zone"),
                          icon: Icon(Icons.arrow_drop_down_outlined),
                          isExpanded: true,
                          value: valuezone,
                          onChanged: (newValue) {
                            setState(() {
                              valuezone = newValue;
                            });
                          },
                          items: listitem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Your Area",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff7C7C7C)),
                          ),
                        ),
                        DropdownButton(
                          hint: Text("Select Your Zone"),
                          icon: Icon(Icons.arrow_drop_down_outlined),
                          isExpanded: true,
                          value: valuearea,
                          onChanged: (newValue) {
                            setState(() {
                              valuearea = newValue;
                            });
                          },
                          items: listitem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("submit button");
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => Login(),
                            //   ),
                            // );
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
                                "Submit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
