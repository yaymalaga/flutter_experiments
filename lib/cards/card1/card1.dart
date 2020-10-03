import 'package:cards_ui/cards/card1/components/card1_user.dart';
import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1();

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 333,
      child: Column(
        children: [
          const Header(
            titleColor: Color(0xff8f94a2),
            title: "Total Active Users",
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card1User(
                      user: usersData["janice"],
                    ),
                    Card1User(
                      user: usersData["edward"],
                    ),
                    Card1User(
                      user: usersData["jesse"],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card1User(
                      user: usersData["allan"],
                    ),
                    Card1User(
                      user: usersData["brenda"],
                    ),
                    Card1User(
                      user: usersData["joseph"],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
