import 'package:cards_ui/cards/card6/components/downloads_bars.dart';
import 'package:cards_ui/components/header.dart';
import 'package:cards_ui/components/gradient_card.dart';
import 'package:flutter/material.dart';

class Card6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientCard(
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      endGradient: Alignment(1, 0),
      child: Center(
        child: Header(
          title: "1.8M",
          titleColor: Colors.white,
          titleSize: 16,
          subtitle: "App Downloads",
          subtitleColor: Colors.white,
          subtitleSize: 14,
          iconColor: Color(0xffc3c6d1),
          trailing: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
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
