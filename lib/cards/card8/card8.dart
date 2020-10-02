import 'package:cards_ui/cards/card1/components/card1_user.dart';
import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card8 extends StatelessWidget {
  final List<String> people = [
    "marisa",
    "kenneth2",
    "michelle",
    "lanette",
    "joyce",
    "troy"
  ];

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 575,
      child: Column(
        children: [
          Header(
            titleColor: Color(0xff8f94a2),
            title: "Followers",
          ),
          for (var i = 0; i < people.length; i++) ...[
            Header(
              avatar: UserAvatar(
                radius: 30,
                user: usersData[people[i]],
              ),
              title: usersData[people[i]].fullName,
              titleColor: Color(0xff131721),
              titleSize: 16,
              titleWeight: FontWeight.w500,
              subtitle: usersData["anne"].fullName,
              subtitleColor: Color(0xff858997),
              subtitleSize: 13,
              trailing: SizedBox(),
            ),
            if (i != people.length - 1) SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
