import 'package:flutter_experiments/cards_ui/components/user_avatar.dart';
import 'package:flutter_experiments/cards_ui/utils/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1User extends StatelessWidget {
  final User user;

  const Card1User({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        UserAvatar(user: user),
        const SizedBox(
          height: 12,
        ),
        Text(
          user.fullName,
          style: GoogleFonts.lato(
            fontSize: 17,
            color: const Color(0xff131721),
          ),
        ),
      ],
    );
  }
}
