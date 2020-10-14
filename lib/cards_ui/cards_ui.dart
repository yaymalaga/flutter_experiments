import 'package:flutter/material.dart';
import 'package:flutter_experiments/cards_ui/cards/card1/card1.dart';
import 'package:flutter_experiments/cards_ui/cards/card2/card2.dart';
import 'package:flutter_experiments/cards_ui/cards/card3/card3.dart';
import 'package:flutter_experiments/cards_ui/cards/card4/card4.dart';
import 'package:flutter_experiments/cards_ui/cards/card5/card5.dart';
import 'package:flutter_experiments/cards_ui/cards/card6/card6.dart';
import 'package:flutter_experiments/cards_ui/cards/card7/card7.dart';
import 'package:flutter_experiments/cards_ui/cards/card8/card8.dart';
import 'package:flutter_experiments/cards_ui/cards/card9/card9.dart';

class CardsUI extends StatelessWidget {
  const CardsUI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeff3fc),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(28),
          children: const [
            Card1(),
            SizedBox(height: 30),
            Card2(),
            SizedBox(height: 30),
            Card3(),
            SizedBox(height: 30),
            Card4(),
            SizedBox(height: 30),
            Card5(),
            SizedBox(height: 30),
            Card6(),
            SizedBox(height: 30),
            Card7(),
            SizedBox(height: 30),
            Card8(),
            SizedBox(height: 30),
            Card9(),
          ],
        ),
      ),
    );
  }
}
