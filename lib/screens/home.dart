import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter App'),
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(149, 60, 193, 0.54),
                Color.fromRGBO(91, 194, 201, 1)
                // Color.fromRGBO(81, 81, 198, 1),
                // Color.fromRGBO(136, 139, 244, 1),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(50),
                  child: Text(
                    "Dash",
                    textScaleFactor: 4.5,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(40),
                  child: Text(
                    "Hey there",
                    textScaleFactor: 3.5,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(70)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromRGBO(101, 104, 172, 1),
                                  Color.fromRGBO(28, 29, 52, 1),
                                ],
                              ),
                              // color: Color.fromRGBO(101, 104, 172, 1),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Text("LOG IN"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromRGBO(101, 104, 172, 1),
                                  Color.fromRGBO(28, 29, 52, 1),
                                ],
                              ),
                              // color: Color.fromRGBO(28, 29, 52, 1),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Text("REGISTER"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
