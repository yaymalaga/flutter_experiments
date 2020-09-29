import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final double height;

  Bar({@required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
