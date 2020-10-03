import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  static const List<String> _people = [
    "marisa",
    "kenneth2",
    "michelle",
    "lanette",
    "joyce",
    "troy"
  ];

  const Card2();

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 575,
      child: Column(
        children: [
          const Header(
            titleColor: Color(0xff8f94a2),
            title: "My messages",
          ),
          for (var i = 0; i < _people.length; i++) ...[
            Header(
              avatar: UserAvatar(
                user: usersData[_people[i]],
              ),
              title: usersData[_people[i]].fullName,
              subtitle: usersData[_people[i]].subtitle,
              subtitleSize: 13,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "04:00",
                    style: TextStyle(
                      color: Color(0xff858997),
                      fontSize: 12,
                    ),
                  ),
                  if (usersData[_people[i]].notifications != null)
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: const Color(0xffe3e7fb),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "${usersData[_people[i]].notifications}",
                          style: const TextStyle(
                            color: Color(0xff465de2),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            if (i != _people.length - 1) const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
