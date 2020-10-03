import 'package:cards_ui/components/gradient_card.dart';
import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/user_avatar.dart';
import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card9 extends StatelessWidget {
  final users = ["anon1", "anon2", "anon3", "anon4"];

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 30);

    return SimpleCard(
      height: 410,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: padding,
            child: Header(
              avatar: UserAvatar(
                radius: 30,
                user: usersData["food"],
              ),
              title: usersData["food"].fullName,
              subtitle: usersData["food"].subtitle,
            ),
          ),
          Divider(
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
                        color: Color(0xff34b06d),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "— 3 Pending",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: Color(0xffa2a5b0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (final user in users)
                      UserAvatar(
                        radius: 28,
                        user: usersData[user],
                      ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                InkWell(
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
