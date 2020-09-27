import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleHeader extends StatelessWidget {
  final String title;

  SimpleHeader({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          this.title,
          style: GoogleFonts.lato(
            fontSize: 16,
            color: Color(0xff8f94a2),
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
