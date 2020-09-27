import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1User extends StatelessWidget {
  final String name;
  final String nameMiniature;
  final String pathMiniature;
  final Color letterColor;
  final Color backgroundColor;

  const Card1User(this.name,
      {this.nameMiniature = "AA",
      this.letterColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.pathMiniature});

  @override
  Widget build(BuildContext context) {
    CircleAvatar avatar;
    if (this.pathMiniature == null) {
      avatar = CircleAvatar(
        radius: 30,
        child: Text(
          this.nameMiniature,
          style: TextStyle(
            color: this.letterColor,
          ),
        ),
        backgroundColor: this.backgroundColor,
      );
    } else {
      avatar = CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          this.pathMiniature,
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        avatar,
        SizedBox(
          height: 12,
        ),
        Text(
          this.name,
          style: GoogleFonts.lato(
            fontSize: 17,
            color: Color(0xff131721),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
