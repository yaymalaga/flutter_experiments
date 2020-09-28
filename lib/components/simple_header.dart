import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleHeader extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;

  SimpleHeader({
    @required this.title,
    this.fontSize = 16,
    this.color = const Color(0xff8f94a2),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          this.title,
          style: GoogleFonts.lato(
            fontSize: this.fontSize,
            color: this.color,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: Color(0xff8f94a2),
          ),
          onPressed: () => {},
        ),
      ],
    );
  }
}
