import 'package:flutter/material.dart';

class User {
  final String fullName;
  final String nameMiniature;
  final String pathMiniature;
  final Color letterColor;
  final Color backgroundColor;

  const User({
    this.fullName = "AA",
    this.nameMiniature = "AA",
    this.letterColor = Colors.white,
    this.backgroundColor = Colors.black,
    this.pathMiniature,
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
  "mille": User(
    fullName: "Mille Knudsen",
    letterColor: Color(0xff624afb),
    backgroundColor: Color(0xfff0edff),
    nameMiniature: "MK",
  ),
  "kenneth": User(
    fullName: "Kenneth Erickson",
    pathMiniature: "assets/kenneth.png",
  ),
};
