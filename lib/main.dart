import 'package:cards_ui/cards/card1/card1.dart';
import 'package:cards_ui/cards/card3/card3.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: 30),
            Card3(),
          ],
        ),
      ),
    );
  }
}
