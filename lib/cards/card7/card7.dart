import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/likes_info.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card7 extends StatelessWidget {
  const Card7();

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 360,
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(
            avatar: UserAvatar(
              radius: 26,
              user: usersData["anne"],
            ),
            title: usersData["anne"].fullName,
            subtitle: usersData["anne"].subtitle,
            subtitleSize: 13,
            iconColor: const Color(0xffc7c9d0),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 26.0),
            child: Text(
              "“User Experience Design” is often used interchangeably with terms "
              "such as “User Interface Design” and “Usability”. However, while "
              "usability and user interface (UI) design are important aspects of "
              "UX design, they are subsets of it – UX design covers a vast array "
              "of other areas, too.",
              style: GoogleFonts.lato(
                fontSize: 16,
                color: const Color(0xff131721),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(flex: 3),
          const LikesInfo(
            iconColor: Color(0xff5d6be5),
            textColor: Color(0xff131721),
            likesNumber: 783,
          )
        ],
      ),
    );
  }
}
