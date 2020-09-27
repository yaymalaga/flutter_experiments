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

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 6, 20, 24),
      height: 333,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffdbd8ea),
            offset: Offset(0, 10),
            blurRadius: 17.5,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Active Users",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Color(0xff8f94a2),
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Color(0xff8f94a2),
                ),
                onPressed: () => {},
              ),
            ],
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card1User(
                    "Janice",
                    pathMiniature: "assets/janice.png",
                  ),
                  Card1User(
                    "Edward",
                    letterColor: Color(0xff624afb),
                    backgroundColor: Color(0xfff0edff),
                    nameMiniature: "EA",
                  ),
                  Card1User(
                    "Jesse",
                    pathMiniature: "assets/jesse.png",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card1User(
                    "Allan",
                    letterColor: Color(0xfffb4eb3),
                    backgroundColor: Color(0xffffedf7),
                    nameMiniature: "AD",
                  ),
                  Card1User(
                    "Brenda",
                    pathMiniature: "assets/brenda.png",
                  ),
                  Card1User(
                    "Joseph",
                    pathMiniature: "assets/joseph.png",
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Card1User extends StatelessWidget {
  final String name;
  final String nameMiniature;
  final String pathMiniature;
  final Color letterColor;
  final Color backgroundColor;

  const Card1User(this.name,
      {this.nameMiniature = "AA",
      this.letterColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.pathMiniature});

  @override
  Widget build(BuildContext context) {
    CircleAvatar avatar;
    if (this.pathMiniature == null) {
      avatar = CircleAvatar(
        radius: 30,
        child: Text(
          this.nameMiniature,
          style: TextStyle(
            color: this.letterColor,
          ),
        ),
        backgroundColor: this.backgroundColor,
      );
    } else {
      avatar = CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          this.pathMiniature,
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        avatar,
        SizedBox(
          height: 12,
        ),
        Text(
          this.name,
          style: GoogleFonts.lato(
            fontSize: 17,
            color: Color(0xff131721),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
