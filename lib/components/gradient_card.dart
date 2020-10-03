import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  final Widget child;
  final double height;
  final EdgeInsets padding;
  final Alignment endGradient;
  final double borderRadius;

  const GradientCard({
    @required this.child,
    @required this.height,
    this.padding = const EdgeInsets.fromLTRB(20, 6, 20, 24),
    this.endGradient = Alignment.bottomRight,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff465de2),
            Color(0xff764ba2),
          ],
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
