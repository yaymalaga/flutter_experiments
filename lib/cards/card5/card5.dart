import 'package:cards_ui/components/avatar_header.dart';
import 'package:cards_ui/components/gradient_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientCard(
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 25),
      endGradient: Alignment(1, 0),
      child: Center(
        child: AvatarHeader(
          avatar: UserAvatar(
            user: usersData["kenneth"],
          ),
          title: "Kenneth Erickson",
          titleColor: Colors.white,
          titleSize: 17,
          subtitle: "San Diego, CA",
          subtitleColor: Colors.white,
          subtitleSize: 16,
          margin: EdgeInsets.only(top: 8),
          titleWeight: FontWeight.w900,
          iconColor: Color(0xffc3c6d1),
        ),
      ),
    );
  }
}
