import 'package:flutter/material.dart';

class User {
  final String fullName;
  final String nameMiniature;
  final String pathMiniature;
  final Color letterColor;
  final Color backgroundColor;
  final double radius;

  const User({
    this.fullName = "AA",
    this.nameMiniature = "AA",
    this.letterColor = Colors.white,
    this.backgroundColor = Colors.black,
    this.pathMiniature,
    this.radius = 30,
  });
}

final Map<String, User> usersData = {
  "janice": User(
    fullName: "Janice",
    pathMiniature: "assets/janice.png",
  ),
  "edward": User(
    fullName: "Edward",
    letterColor: Color(0xff624afb),
    backgroundColor: Color(0xfff0edff),
    nameMiniature: "EA",
  ),
  "allan": User(
    fullName: "Allan",
    letterColor: Color(0xfffb4eb3),
    backgroundColor: Color(0xffffedf7),
    nameMiniature: "AD",
  ),
  "jesse": User(
    fullName: "Jesse",
    pathMiniature: "assets/jesse.png",
  ),
  "brenda": User(
    fullName: "Brenda",
    pathMiniature: "assets/brenda.png",
  ),
  "joseph": User(
    fullName: "Joseph",
    pathMiniature: "assets/joseph.png",
  ),
};
