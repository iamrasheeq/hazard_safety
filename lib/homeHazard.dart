import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hazard_safety/hazardList.dart';
import 'hazListCard.dart';
import 'hazShowCard.dart';
import 'constants.dart';
import 'hazardBody.dart';
import 'popUpHazard.dart';
import 'reuseCard.dart';

class homeHazard extends StatefulWidget {
  @override
  _homeHazardState createState() => _homeHazardState();
}

class _homeHazardState extends State<homeHazard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              //decoration:
              //height: 130,

              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Welcome,", style: homeTitle)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: reuseCard(
                          onPress: () {
                            setState(() {
                              //print("0");
                              lan = "0";
                              cardLanColor(lan);
                            });
                          },
                          nameLan: "English",
                          colorBody: colorLanBody1,
                          colorText: colorLanText1,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: reuseCard(
                          onPress: () {
                            setState(() {
                              lan = "1";
                              cardLanColor(lan);
                            });
                          },
                          nameLan: " বাংলা  ",
                          colorBody: colorLanBody2,
                          colorText: colorLanText2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 16,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(30),

                  // padding:
                  //     EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => hazardBody(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Color(0xFFFFFFFF),
                                child: Image.asset("images/dis.png"),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Symbol Matching",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  letterSpacing: .5,
                                  fontSize: 20,
                                  color: Color(0x830D1D24),
                                  //color: Color(0x9C0D1D24),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      //margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x1D565656),
                        ),
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x22000000),
                            blurRadius: 2,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(30),

                  // padding:
                  //     EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => hazardList(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Color(0xFFFFFFFF),
                                child: Image.asset("images/info.png"),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Hazard Book",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  letterSpacing: .5,
                                  fontSize: 20,
                                  color: Color(0x830D1D24),
                                  //color: Color(0x9C0D1D24),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      //margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x1D565656),
                        ),
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x22000000),
                            blurRadius: 2,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //     builder: (context) => PopHazardDetails(
              //       //       hazIndex: index,
              //       //     ),
              //       //   ),
              //       // );
              //     });
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Expanded(
              //           flex: 6,
              //           child: Padding(
              //             padding: EdgeInsets.all(8),
              //             child: Container(
              //               height: double.infinity,
              //               width: double.infinity,
              //               color: Color(0xFFFFFFFF),
              //               child: Image.asset(hazardListPhoto[1]),
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Text(
              //             hazardName_en[1],
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 fontFamily: 'Source Sans Pro',
              //                 letterSpacing: .5,
              //                 fontSize: 16,
              //                 color: Color(0x830D1D24),
              //                 //color: Color(0x9C0D1D24),
              //                 fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //       ],
              //     ),
              //     margin: EdgeInsets.all(20),
              //     decoration: BoxDecoration(
              //       border: Border.all(
              //         color: Color(0x1D565656),
              //       ),
              //       color: Color(0xFFFFFFFF),
              //       borderRadius: BorderRadius.circular(20.0),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Color(0x22000000),
              //           blurRadius: 4,
              //           offset: Offset(4, 6),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        )
      ],
    );
  }
}
