import 'package:flutter_experiments/cards_ui/components/gradient_card.dart';
import 'package:flutter_experiments/cards_ui/components/header.dart';
import 'package:flutter_experiments/cards_ui/components/simple_card.dart';
import 'package:flutter_experiments/cards_ui/components/user_avatar.dart';
import 'package:flutter_experiments/cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card9 extends StatelessWidget {
  static const _users = ["anon1", "anon2", "anon3", "anon4"];

  const Card9();

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 30, vertical: 30);

    return SimpleCard(
      height: 410,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: padding,
            child: Header(
              avatar: UserAvatar(
                user: usersData["food"],
              ),
              title: usersData["food"].fullName,
              subtitle: usersData["food"].subtitle,
            ),
          ),
          const Divider(
            color: Color(0xffebedf4),
            height: 1,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          Padding(
            padding: padding,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "4 Members Going ",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: const Color(0xff34b06d),
                      ),
                    ),
                    Text(
                      "— 3 Pending",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: const Color(0xffa2a5b0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (final user in _users)
                      UserAvatar(
                        radius: 28,
                        user: usersData[user],
                      ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                const InkWell(
                  child: GradientCard(
                    height: 64,
                    padding: EdgeInsets.zero,
                    borderRadius: 9,
                    child: Center(
                      child: Text(
                        "View Details",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
