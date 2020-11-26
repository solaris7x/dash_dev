import 'package:flutter/material.dart';

class OverlappedStack extends StatelessWidget {
  final List<Widget> children;
  final double overlap;
  OverlappedStack({@required this.children, this.overlap = 10.0});

  @override
  Widget build(BuildContext context) {
    List<Widget> stackLayers = List<Widget>.generate(children.length, (index) {
      return Padding(
        padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 0, 0, 0),
        child: children[index],
      );
    });

    return Stack(children: stackLayers);
  }
}
