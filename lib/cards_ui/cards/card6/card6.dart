import 'package:flutter_experiments/cards_ui/cards/card6/components/downloads_bars.dart';
import 'package:flutter_experiments/cards_ui/components/header.dart';
import 'package:flutter_experiments/cards_ui/components/gradient_card.dart';
import 'package:flutter/material.dart';

class Card6 extends StatelessWidget {
  const Card6();

  @override
  Widget build(BuildContext context) {
    return const GradientCard(
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 30),
      endGradient: Alignment(1, 0),
      child: Center(
        child: Header(
          title: "1.8M",
          titleColor: Colors.white,
          subtitle: "App Downloads",
          subtitleColor: Colors.white,
          iconColor: Color(0xffc3c6d1),
          trailing: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: DownloadsBars(
              proportionalHeights: [
                0.9,
                0.5,
                0.9,
                0.4,
                1,
                0.9,
                0.975,
                0.75,
                0.95,
                0.5,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
