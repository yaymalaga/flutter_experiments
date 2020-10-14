import 'package:flutter/material.dart';
import 'package:flutter_experiments/cards_ui/cards_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Experiments',
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
      backgroundColor: const Color(0xffeff3fc),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(28),
          children: [
            ListTile(
              title: const Text("Cards UI"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardsUI(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
