import 'package:flutter/material.dart';

import '../widgets/overlappedStack.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            print("Menu icon");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              print("Profile icon");
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.black,
                ),
              ),
              label: "Maps",
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Container(
          // Background gradient container
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(180)),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(224, 188, 243, 1),
                Color.fromRGBO(126, 231, 238, 1),
                // Color.fromRGBO(81, 81, 198, 1),
                // Color.fromRGBO(136, 139, 244, 1),
              ],
            ),
          ),
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                  // color: Colors.black,
                  child: ListView(
                //FIXME: Get child height from parent ratio
                children: <Widget>[
                  Container(
                    //Card container
                    height: 400,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xff191a1d),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: CircleAvatar(
                                    //User profile image
                                    backgroundImage: NetworkImage(
                                        'https://unsplash.com/photos/JmS0fkLlUtA/download?force=true&w=640'), // TODO: get user profile image from Backend
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                            flex: 10,
                                            child: FittedBox(
                                              child: Text(
                                                "Vaibhav shared event", // TODO: Get user name from db
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 9,
                                            child: FittedBox(
                                              child: Text(
                                                "12 April 2020 at 10:47 AM", //FIXME: Use package intl for datetime
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    // TODO: design onPressed dropdown
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            width: double
                                .infinity, //FIXME: find more elegant image fit
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ingo-stiller-3tkxfe2GocY-unsplash.jpg&w=1920'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 14,
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      flex: 8,
                                      child: FittedBox(
                                        child: Text(
                                          "Anyone up for the art event JP nagar?", // TODO: Get user data from db , TODO: set string length limit to avoid fontsize chnage
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Container(),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: FittedBox(
                                        child: Text(
                                          "12 April 2020 at 10:47 AM", //FIXME: Use package intl for datetime
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 10,
                                  child: Container(
                                    width: double.infinity,
                                    child: OverlappedStack(
                                      overlap: 20,
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://unsplash.com/photos/PLOq7Ouq0fM/download?force=true&w=2400'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ingo-stiller-3tkxfe2GocY-unsplash.jpg&w=1920'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://unsplash.com/photos/JmS0fkLlUtA/download?force=true&w=640'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //Card container
                    height: 400,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xff191a1d),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: CircleAvatar(
                                    //User profile image
                                    backgroundImage: NetworkImage(
                                        'https://unsplash.com/photos/JmS0fkLlUtA/download?force=true&w=640'), // TODO: get user profile image from Backend
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                            flex: 10,
                                            child: FittedBox(
                                              child: Text(
                                                "Vaibhav shared event", // TODO: Get user name from db
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 9,
                                            child: FittedBox(
                                              child: Text(
                                                "12 April 2020 at 10:47 AM", //FIXME: Use package intl for datetime
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    // TODO: design onPressed dropdown
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            width: double
                                .infinity, //FIXME: find more elegant image fit
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ingo-stiller-3tkxfe2GocY-unsplash.jpg&w=1920'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 14,
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      flex: 8,
                                      child: FittedBox(
                                        child: Text(
                                          "Anyone up for the art event JP nagar?", // TODO: Get user data from db , TODO: set string length limit to avoid fontsize chnage
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Container(),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: FittedBox(
                                        child: Text(
                                          "12 April 2020 at 10:47 AM", //FIXME: Use package intl for datetime
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 10,
                                  child: Container(
                                    width: double.infinity,
                                    child: OverlappedStack(
                                      overlap: 20,
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://unsplash.com/photos/PLOq7Ouq0fM/download?force=true&w=2400'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ingo-stiller-3tkxfe2GocY-unsplash.jpg&w=1920'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://unsplash.com/photos/JmS0fkLlUtA/download?force=true&w=640'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //Card container
                    height: 400,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xff191a1d),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: CircleAvatar(
                                    //User profile image
                                    backgroundImage: NetworkImage(
                                        'https://unsplash.com/photos/JmS0fkLlUtA/download?force=true&w=640'), // TODO: get user profile image from Backend
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                            flex: 10,
                                            child: FittedBox(
                                              child: Text(
                                                "Vaibhav shared event", // TODO: Get user name from db
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 9,
                                            child: FittedBox(
                                              child: Text(
                                                "12 April 2020 at 10:47 AM", //FIXME: Use package intl for datetime
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    // TODO: design onPressed dropdown
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            width: double
                                .infinity, //FIXME: find more elegant image fit
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ingo-stiller-3tkxfe2GocY-unsplash.jpg&w=1920'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 14,
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      flex: 8,
                                      child: FittedBox(
                                        child: Text(
                                          "Anyone up for the art event JP nagar?", // TODO: Get user data from db , TODO: set string length limit to avoid fontsize chnage
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Container(),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: FittedBox(
                                        child: Text(
                                          "12 April 2020 at 10:47 AM", //FIXME: Use package intl for datetime
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 10,
                                  child: Container(
                                    width: double.infinity,
                                    child: OverlappedStack(
                                      overlap: 20,
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://unsplash.com/photos/PLOq7Ouq0fM/download?force=true&w=2400'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=ingo-stiller-3tkxfe2GocY-unsplash.jpg&w=1920'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://unsplash.com/photos/JmS0fkLlUtA/download?force=true&w=640'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ), //Replace this container and add your code
          ),
        ),
      ),
    );
  }
}

// Kept for ref , converted to OverlappedStack widget
// Widget overlapped(itemList) {
//   final overlap = 20.0;
//   final List<Widget> items = itemList;

//   List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 0, 0, 0),
//       child: items[index],
//     );
//   });

//   return Stack(children: stackLayers);
// }
