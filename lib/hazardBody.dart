import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hazard_safety/hazardList.dart';
import 'package:hazard_safety/titleBox.dart';
import 'hazListCard.dart';
import 'hazShowCard.dart';
import 'constants.dart';
import 'popUpHazard.dart';

class hazardBody extends StatefulWidget {
  @override
  _hazardBodyState createState() => _hazardBodyState();
}

enum HazList {
  haz0,
  haz1,
  haz2,
  haz3,
  haz4,
  haz5,
  haz6,
  haz7,
  haz8,
  haz9,
  haz10,
  haz11,
  haz12
}

class _hazardBodyState extends State<hazardBody> {
  void goNext(var distanceHaz) {
    resultPage(distanceHaz);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PopUpHazard(
          distance: distanceHaz,
          interpretation: intp,
          popColor: popInsColor,
          unitDis: unit,
        ),
      ),
    );
  }

  void selectInd(int indexValue) {
    if (en) {
      if (selectOne) {
        hazardName01 = hazardName_en[indexValue];
        hazardPic01 = hazardPhoto[indexValue];
        picitem01 = hazardPhoto[indexValue];
        selectOne = false;
      } else {
        picitem02 = hazardPhoto[indexValue];
        hazardPic02 = hazardPhoto[indexValue];
        hazardName02 = hazardName_en[indexValue];
        dis = hazardData[getIndex(hazardName01)][getIndex(hazardName02)];
        goNext(dis);
      }
    } else {
      if (selectOne) {
        hazardName01 = hazardName_bn[indexValue];
        hazardPic01 = hazardPhoto[indexValue];
        picitem01 = hazardPhoto[indexValue];
        selectOne = false;
      } else {
        picitem02 = hazardPhoto[indexValue];
        hazardPic02 = hazardPhoto[indexValue];
        hazardName02 = hazardName_bn[indexValue];
        dis = hazardData[getIndex(hazardName01)][getIndex(hazardName02)];
        goNext(dis);
      }
    }
  }

  HazList selectCard = HazList.haz12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'hazard',
            style: TextStyle(
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
                          FloatingActionButton(
                            heroTag: "btn1",
                            backgroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                selectCard = HazList.haz12;
                                reset();
                              });
                            },
                            child: Icon(Icons.loop, color: Color(0x830D1D24)),
                          ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        //padding: EdgeInsets.all(0),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(0);
                                    //goNext();
                                  });

                                  selectCard = HazList.haz0;
                                },
                                cardColorList: selectCard == HazList.haz0
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[0],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(1);
                                    //goNext();
                                  });
// print(hazIndex);
                                  selectCard = HazList.haz1;
                                },
                                cardColorList: selectCard == HazList.haz1
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[1],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(2);
                                    //goNext();
                                  });
// print(hazIndex);
                                  selectCard = HazList.haz2;
                                },
                                cardColorList: selectCard == HazList.haz2
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[2],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(3);
                                    //goNext();
                                  });
// print(hazIndex);
                                  selectCard = HazList.haz3;
                                },
                                cardColorList: selectCard == HazList.haz3
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[3],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(4);
                                    //goNext();
                                  });
// print(hazIndex);
                                  selectCard = HazList.haz4;
                                },
                                cardColorList: selectCard == HazList.haz4
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[4],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(5);
                                    //goNext();
                                  });
// print(hazIndex);
                                  selectCard = HazList.haz5;
                                },
                                cardColorList: selectCard == HazList.haz5
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[5],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(6);
                                    //goNext();
                                  });
                                  selectCard = HazList.haz6;
                                },
                                cardColorList: selectCard == HazList.haz6
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[6],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(7);
                                    //goNext();
                                  });
// print(hazIndex);
                                  selectCard = HazList.haz7;
                                },
                                cardColorList: selectCard == HazList.haz7
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[7],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(8);
                                    //goNext();
                                  });
                                  selectCard = HazList.haz8;
                                },
                                cardColorList: selectCard == HazList.haz8
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[8],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(9);
                                    //goNext();
                                  });
                                  selectCard = HazList.haz9;
                                },
                                cardColorList: selectCard == HazList.haz9
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[9],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(10);
                                    //goNext();
                                  });
                                  selectCard = HazList.haz10;
                                },
                                cardColorList: selectCard == HazList.haz10
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[10],
                              ),
                            ),
                            Expanded(
                              child: listCardPro(
                                onTapHaz: () {
                                  setState(() {
                                    selectInd(11);
                                    //goNext();
                                  });
                                  selectCard = HazList.haz11;
                                },
                                cardColorList: selectCard == HazList.haz11
                                    ? conCardActiveC
                                    : conCardInActiveC,
                                hazardPic: hazardPhoto[11],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
