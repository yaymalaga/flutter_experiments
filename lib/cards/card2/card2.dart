import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
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
            title: "My messages",
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
              subtitle: usersData[people[i]].subtitle,
              subtitleColor: Color(0xff858997),
              subtitleSize: 13,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "04:00",
                    style: TextStyle(
                      color: Color(0xff858997),
                      fontSize: 12,
                    ),
                  ),
                  if (usersData[people[i]].notifications != null)
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Color(0xffe3e7fb),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "${usersData[people[i]].notifications}",
                          style: TextStyle(
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
            if (i != people.length - 1) SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
