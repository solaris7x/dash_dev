import 'package:flutter/material.dart';

class GuestBackground extends StatelessWidget {
  final Widget child;
  GuestBackground({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background gradient container
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
      child: child,
    );
  }
}
