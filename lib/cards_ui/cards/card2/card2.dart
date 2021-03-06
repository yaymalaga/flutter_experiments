import 'package:flutter_experiments/cards_ui/components/users_list_card.dart';
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
    return const UsersListCard(
      people: _people,
      trailingDetails: true,
    );
  }
}
