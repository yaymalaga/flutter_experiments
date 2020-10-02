import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/gradient_card.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 360,
      padding: EdgeInsets.symmetric(horizontal: 37, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(
            avatar: UserAvatar(
              radius: 26,
              user: usersData["anne"],
            ),
            title: usersData["anne"].fullName,
            titleColor: Color(0xff131721),
            titleSize: 16,
            titleWeight: FontWeight.w500,
            subtitle: "3:10 PM Tuesday, November 12",
            subtitleColor: Color(0xff858997),
            subtitleSize: 13,
            iconColor: Color(0xffc7c9d0),
          ),
          Spacer(),
          Text(
            '“User Experience Design” is often used interchangeably with terms such as “User Interface Design” and “Usability”. However, while usability and user interface (UI) design are important aspects of UX design, they are subsets of it – UX design covers a vast array of other areas, too.',
            style: GoogleFonts.lato(
              fontSize: 16,
              color: Color(0xff131721),
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(flex: 3),
          Row(
            children: [
              Icon(
                Icons.thumb_up,
                color: Color(0xff5d6be5),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "783 Likes",
                style: GoogleFonts.lato(
                  fontSize: 17,
                  color: Color(0xff131721),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
