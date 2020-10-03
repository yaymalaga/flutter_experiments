import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card8 extends StatelessWidget {
  static const List<String> _people = [
    "marisa",
    "kenneth2",
    "michelle",
    "lanette",
    "joyce",
    "troy"
  ];

  const Card8();

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 575,
      child: Column(
        children: [
          const Header(
            titleColor: Color(0xff8f94a2),
            title: "Followers",
          ),
          for (var i = 0; i < _people.length; i++) ...[
            Header(
              avatar: UserAvatar(
                user: usersData[_people[i]],
              ),
              title: usersData[_people[i]].fullName,
              subtitle: usersData[_people[i]].fullName,
              subtitleSize: 13,
              trailing: const SizedBox(),
            ),
            if (i != _people.length - 1) const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
