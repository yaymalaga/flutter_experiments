import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/gradient_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card5 extends StatelessWidget {
  const Card5();

  @override
  Widget build(BuildContext context) {
    return GradientCard(
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      endGradient: const Alignment(1, 0),
      child: Center(
        child: Header(
          avatar: UserAvatar(
            user: usersData["kenneth"],
          ),
          title: usersData["kenneth"].fullName,
          titleColor: Colors.white,
          titleSize: 17,
          subtitle: usersData["kenneth"].subtitle,
          subtitleColor: Colors.white,
          subtitleSize: 16,
          margin: const EdgeInsets.only(top: 8),
          titleWeight: FontWeight.w900,
          iconColor: const Color(0xffc3c6d1),
        ),
      ),
    );
  }
}
