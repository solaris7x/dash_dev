import 'package:flutter/material.dart';

import 'screens/guest_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dash Dev',
      home: GuestScreen(),
      routes: {
        GuestScreen.routeName: (ctx) => GuestScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
