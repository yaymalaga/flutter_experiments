import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LikesInfo extends StatelessWidget {
  final Color iconColor;
  final Color textColor;
  final int likesNumber;

  LikesInfo({
    @required this.iconColor,
    @required this.textColor,
    @required this.likesNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.thumb_up,
          color: iconColor,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "$likesNumber Likes",
          style: GoogleFonts.lato(
            fontSize: 17,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
