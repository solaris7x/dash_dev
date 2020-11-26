import 'package:flutter/material.dart';

import '../widgets/guest_background.dart';
import './home_screen.dart';

class SuggestionsScreen extends StatelessWidget {
  static const routeName = '/suggestions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FractionallySizedBox(
        widthFactor: 0.3,
        heightFactor: 0.08,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: Text(
              "NEXT",
            ),
          ),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: GuestBackground(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: SafeArea(
                        child: Center(
                          child: Text(
                            "Suggestions",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          bottom: 40,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "People who recently joined",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 0.7,
                                  ),
                                  // FIXME: remove item count when fetching data from api
                                  itemCount: 10,
                                  itemBuilder: (ctx, index) => Container(
                                    padding: EdgeInsets.all(10),
                                    color: Color.fromRGBO(149, 151, 161, 0.2),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                            flex: 6,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.amber,
                                              ),
                                            )),
                                        Expanded(
                                          flex: 3,
                                          child: Center(
                                            child: Text(
                                              "Elizabeth",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: SizedBox.expand(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              // TODO: already following button
                                              child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Follow",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                color: Color.fromRGBO(
                                                    84, 88, 247, 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
