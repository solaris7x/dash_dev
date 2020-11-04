import 'package:flutter/material.dart';

import './login_screen.dart';
import '../widgets/guest_background.dart';

class GuestScreen extends StatelessWidget {
  static const routeName = '/guest';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter App'),
      // ),
      body: GuestBackground(
        // // Background gradient container
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(70)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(LoginScreen.routeName),
                      child: Column(
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
                            padding: EdgeInsets.all(20),
                            child: FittedBox(
                              child: Icon(
                                Icons.login_rounded,
                              ),
                            ),
                          ),
                          Text(
                            "LOG IN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
                          padding: EdgeInsets.all(20),
                          child: FittedBox(
                            child: Icon(
                              Icons.person_rounded,
                            ),
                          ),
                        ),
                        Text(
                          "REGISTER",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
