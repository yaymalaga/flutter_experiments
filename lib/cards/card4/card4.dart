import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/gradient_card.dart';
import 'package:cards_ui/components/likes_info.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card4 extends StatelessWidget {
  const Card4();

  @override
  Widget build(BuildContext context) {
    return GradientCard(
      height: 240,
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(
            avatar: UserAvatar(
              radius: 18,
              user: usersData["kenneth"],
            ),
            title: usersData["kenneth"].fullName,
            titleColor: Colors.white,
            titleSize: 18,
            iconColor: const Color(0xffc3c6d1),
          ),
          const Spacer(),
          Text(
            'The word "coffee" entered the English '
            'language in 1582 via the Dutch koffie…',
            style: GoogleFonts.lato(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const Spacer(flex: 2),
          Row(
            children: [
              const LikesInfo(
                iconColor: Colors.white,
                textColor: Colors.white,
                likesNumber: 783,
              ),
              const SizedBox(
                width: 30,
              ),
              const Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "67 Comments",
                style: GoogleFonts.lato(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
