import 'package:flutter/material.dart';

import 'screens/guest_screen.dart';
import 'screens/login_screen.dart';
import 'screens/suggestions_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dash Dev',
      home: HomeScreen(),
      routes: {
        GuestScreen.routeName: (ctx) => GuestScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SuggestionsScreen.routeName: (ctx) => SuggestionsScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
