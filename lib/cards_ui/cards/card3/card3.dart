import 'package:flutter_experiments/cards_ui/components/header.dart';
import 'package:flutter_experiments/cards_ui/components/simple_card.dart';
import 'package:flutter_experiments/cards_ui/components/user_avatar.dart';
import 'package:flutter_experiments/cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card3 extends StatelessWidget {
  const Card3();

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 194,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(
            avatar: UserAvatar(
              user: usersData["mille"],
            ),
            title: usersData["mille"].fullName,
            subtitle: usersData["mille"].subtitle,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xffeeeff3),
                ),
              ),
              LayoutBuilder(
                builder: (context, constrains) => Container(
                  height: 5,
                  width: constrains.maxWidth / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color(0xff5351fb),
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
                  color: const Color(0xff131721),
                ),
              ),
              Text(
                "792 Points",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: const Color(0xff858997),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
