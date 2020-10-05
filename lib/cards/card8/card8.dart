import 'package:cards_ui/components/users_list_card.dart';
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
    return const UsersListCard(
      people: _people,
      trailingDetails: false,
    );
  }
}
