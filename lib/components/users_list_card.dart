import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

import 'user_avatar.dart';

class UsersListCard extends StatelessWidget {
  final List<String> people;
  final bool trailingDetails;

  const UsersListCard({
    @required this.people,
    @required this.trailingDetails,
  });

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
          for (var i = 0; i < people.length; i++) ...[
            Header(
              avatar: UserAvatar(
                user: usersData[people[i]],
              ),
              title: usersData[people[i]].fullName,
              subtitle: usersData[people[i]].subtitle,
              subtitleSize: 13,
              trailing: trailingDetails
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "04:00",
                          style: TextStyle(
                            color: Color(0xff858997),
                            fontSize: 12,
                          ),
                        ),
                        if (usersData[people[i]].notifications != null)
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
                                "${usersData[people[i]].notifications}",
                                style: const TextStyle(
                                  color: Color(0xff465de2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      ],
                    )
                  : const SizedBox(),
            ),
            if (i != people.length - 1) const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
