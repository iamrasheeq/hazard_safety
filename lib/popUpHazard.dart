import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hazard_safety/titleBox.dart';
import 'hazShowCard.dart';
import 'constants.dart';

class PopUpHazard extends StatelessWidget {
  PopUpHazard(
      {required this.distance,
      required this.interpretation,
      required this.popColor,
      required this.unitDis});
  final String distance;
  final String unitDis;
  final String interpretation;
  final Color popColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black, // transparent status bar
          //systemNavigationBarColor: Colors.white, // navigation bar color
          statusBarIconBrightness: Brightness.light, // status bar icons' color
          systemNavigationBarIconBrightness:
              Brightness.light, //navigation bar icons' color
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        //elevation: 0,
        title: RichText(
          text: TextSpan(
            text: 'hazard',
            style: TextStyle(
              //color: Colors.black,
              color: Color(0xFF0D1D24),
              fontSize: 25,
            ),
            children: const <TextSpan>[
              TextSpan(
                  text: 'Safety',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        //backgroundColor: Color(0xFF0D1D24),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Expanded(
                      child: hazShowCard(
                        cardPhoto: hazardPic01,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: Color(0x830D1D24),
                            size: 30,
                            //semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          // FloatingActionButton(
                          //   heroTag: "btn1",
                          //   backgroundColor: Colors.white,
                          //   onPressed: () {},
                          //   child: Icon(Icons.loop, color: Color(0x830D1D24)),
                          // ),
                          // Expanded(
                          //   child: Padding(
                          //     padding: EdgeInsets.all(7),
                          //     child: Container(
                          //       child: FloatingActionButton(
                          //         heroTag: "btn2",
                          //         backgroundColor: Colors.white,
                          //         onPressed: () {
                          //           setState(() {
                          //             dis = hazardData[indexOne(hazardName01)]
                          //                 [indexOne(hazardName02)];
                          //             goNext(dis);
                          //             //print(dis);
                          //           });
                          //         },
                          //         child: Icon(Icons.drag_handle,
                          //             color: Color(0x830D1D24)),
                          //       ),
                          //     ),
                          //   ),
                          // )

//                           Icon(
//                             Icons.add_circle_outline,
//                             color: Color(0x830D1D24),
//                             size: 30.0,
// //semanticLabel: 'Text to announce in accessibility modes',
//                           ),
// Container(
//   //good design container. eta use korbo.
//   margin: EdgeInsets.only(top: 5),
//   height: 45,
//   width: 90,
//   //color: Colors.white,
//   decoration: BoxDecoration(
//     border: Border.all(color: Color(0x22000000)),
//     color: Color(0xC6FFFFFF),
//     //color: Colors.green,
//     borderRadius: BorderRadius.circular(16),
//     boxShadow: [
//       BoxShadow(
//         color: Color(0x22000000),
//         blurRadius: 4,
//         offset: Offset(4, 6),
//       ),
//     ],
//   ),
//   child: Center(
//     child: Text(
//       "$dis",
//       style: TextStyle(
//         color: Color(0xBF0D1D24),
//         fontSize: 25,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: hazShowCard(
                        cardPhoto: hazardPic02,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: titleBox(name: hazardName01, logo: picitem01)),
                  Expanded(
                      child: titleBox(name: hazardName02, logo: picitem02)),
                ],
              ),
            ),
          ),
          // Expanded(
          //   flex: 4,
          //   child: Container(
          //     //decoration:
          //     //height: 130,
          //
          //     width: double.infinity,
          //     color: Color(0xFFFFFFFF),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         hazShowCard(
          //           cardPhoto: hazardPic01,
          //         ),
          //         SizedBox(
          //           width: 15,
          //         ),
          //         Container(
          //           height: 120,
          //           width: 90,
          //           //color: Colors.blue[100],
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               Icon(
          //                 Icons.add_circle_outline,
          //                 color: Color(0x830D1D24),
          //                 size: 30.0,
          //                 //semanticLabel: 'Text to announce in accessibility modes',
          //               ),
          //             ],
          //           ),
          //         ),
          //         SizedBox(
          //           width: 15,
          //         ),
          //         hazShowCard(
          //           cardPhoto: hazardPic02,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Expanded(
          //   flex: 4,
          //   child: Padding(
          //     padding: const EdgeInsets.all(4.0),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(20.0),
          //       child: Container(
          //         //height: 130,
          //         width: double.infinity,
          //         //color: Color(0x63DCE7EC),
          //         child: Column(
          //           children: [
          //             Card(
          //               elevation: 4,
          //               shadowColor: Colors.black,
          //               shape: RoundedRectangleBorder(
          //                 //side: BorderSide(color: Colors.white70, width: 5),
          //                 borderRadius: BorderRadius.circular(20),
          //               ),
          //               color: Colors.white,
          //               //margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
          //               child: ListTile(
          //                 leading: CircleAvatar(
          //                   backgroundColor: Colors.white,
          //                   backgroundImage:
          //                       AssetImage("images/$picitem01.png"),
          //                 ),
          //                 title: Text(
          //                   "$hazardName01",
          //                   style: TextStyle(
          //                     //   //  fontFamily: 'Source Sans Pro',
          //                     color: Color(0xCE0D1D24),
          //                     //fontWeight: FontWeight.bold,
          //                     fontSize: 20,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Card(
          //               elevation: 4,
          //               shadowColor: Colors.black,
          //               shape: RoundedRectangleBorder(
          //                 //side: BorderSide(color: Colors.white70, width: 5),
          //                 borderRadius: BorderRadius.circular(20),
          //               ),
          //               color: Colors.white,
          //               //margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
          //               child: ListTile(
          //                 leading: CircleAvatar(
          //                   backgroundColor: Colors.white,
          //                   backgroundImage:
          //                       AssetImage("images/$picitem02.png"),
          //                 ),
          //                 title: Text(
          //                   "$hazardName02",
          //                   style: TextStyle(
          //                     //  fontFamily: 'Source Sans Pro',
          //                     color: Color(0xCE0D1D24),
          //                     //fontWeight: FontWeight.bold,
          //                     fontSize: 20,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                //color: Color(0xFFF0F0F0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x22000000)),
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 4,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x22000000)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x22000000),
                        blurRadius: 4,
                        offset: Offset(4, 6),
                      ),
                    ],
                    color: popColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset("images/$unitDis.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Text(
                      //   distance,
                      //   style: DistanceTextStyle,
                      // ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              interpretation,
                              textAlign: TextAlign.center,
                              style: ResultTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
