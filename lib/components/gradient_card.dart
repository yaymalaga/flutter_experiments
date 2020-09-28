import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  final Widget child;
  final double height;
  final EdgeInsets padding;

  GradientCard(
      {@required this.child,
      @required this.height,
      this.padding = const EdgeInsets.fromLTRB(20, 6, 20, 24)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      height: this.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff465de2),
            Color(0xff764ba2),
          ],
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: this.child,
    );
  }
}
