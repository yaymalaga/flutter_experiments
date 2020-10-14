import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  final Widget child;
  final double height;
  final EdgeInsets padding;

  const SimpleCard(
      {@required this.child,
      @required this.height,
      this.padding = const EdgeInsets.fromLTRB(20, 6, 20, 24)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xffdbd8ea),
            offset: Offset(0, 10),
            blurRadius: 17.5,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
