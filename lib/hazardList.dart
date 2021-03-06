import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'popHazardDetails.dart';

class hazardList extends StatefulWidget {
  const hazardList({Key? key}) : super(key: key);

  @override
  _hazardListState createState() => _hazardListState();
}

class _hazardListState extends State<hazardList> {
  String name = "";
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
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
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
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(12, (index) {
          return Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopHazardDetails(
                        hazIndex: index,
                      ),
                    ),
                  );
                });
              },
              child: Container(
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
                          child: Image.asset(hazardListPhoto[index]),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        name = en ? hazardName_en[index] : hazardName_bn[index],
                        //hazardName_bn[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            letterSpacing: .5,
                            fontSize: 15,
                            color: Color(0x990D1D24),
                            //color: Color(0x9C0D1D24),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0x1D565656),
                  ),
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 4,
                      offset: Offset(4, 6),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
