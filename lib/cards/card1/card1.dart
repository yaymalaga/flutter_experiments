import 'package:cards_ui/cards/card1/components/card1_user.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/simple_header.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      height: 333,
      child: Column(
        children: [
          SimpleHeader(
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
                    "Janice",
                    pathMiniature: "assets/janice.png",
                  ),
                  Card1User(
                    "Edward",
                    letterColor: Color(0xff624afb),
                    backgroundColor: Color(0xfff0edff),
                    nameMiniature: "EA",
                  ),
                  Card1User(
                    "Jesse",
                    pathMiniature: "assets/jesse.png",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card1User(
                    "Allan",
                    letterColor: Color(0xfffb4eb3),
                    backgroundColor: Color(0xffffedf7),
                    nameMiniature: "AD",
                  ),
                  Card1User(
                    "Brenda",
                    pathMiniature: "assets/brenda.png",
                  ),
                  Card1User(
                    "Joseph",
                    pathMiniature: "assets/joseph.png",
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
