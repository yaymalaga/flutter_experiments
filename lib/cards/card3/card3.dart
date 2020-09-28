import 'package:cards_ui/components/avatar_header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 194,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarHeader(
            avatar: UserAvatar(
              user: usersData["mille"],
            ),
            title: "Mille Knudsen",
            subtitle: "Product Designer",
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color(0xffeeeff3),
                ),
              ),
              LayoutBuilder(
                builder: (context, constrains) => Container(
                  height: 5,
                  width: constrains.maxWidth / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(0xff5351fb),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Professional",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Color(0xff131721),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "792 Points",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Color(0xff858997),
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
