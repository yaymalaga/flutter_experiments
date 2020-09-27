import 'package:cards_ui/cards/card1/card1.dart';
import 'package:cards_ui/components/simple_card.dart';
import 'package:cards_ui/components/simple_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeff3fc),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(28),
          children: [
            Card1(),
          ],
        ),
      ),
    );
  }
}
