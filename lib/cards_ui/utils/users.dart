import 'package:flutter/material.dart';

class User {
  final String fullName;
  final String nameMiniature;
  final String pathMiniature;
  final String subtitle;
  final int notifications;
  final Color letterColor;
  final Color backgroundColor;

  const User({
    this.fullName = "AA",
    this.nameMiniature = "AA",
    this.subtitle,
    this.notifications,
    this.letterColor = Colors.white,
    this.backgroundColor = Colors.black,
    this.pathMiniature,
  });
}

const Map<String, User> usersData = {
  "janice": User(
    fullName: "Janice",
    pathMiniature: "assets/cards_ui/janice.png",
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
    pathMiniature: "assets/cards_ui/jesse.png",
  ),
  "brenda": User(
    fullName: "Brenda",
    pathMiniature: "assets/cards_ui/brenda.png",
  ),
  "joseph": User(
    fullName: "Joseph",
    pathMiniature: "assets/cards_ui/joseph.png",
  ),
  "mille": User(
    fullName: "Mille Knudsen",
    letterColor: Color(0xff624afb),
    backgroundColor: Color(0xfff0edff),
    nameMiniature: "MK",
    subtitle: "Product Designer",
  ),
  "kenneth": User(
    fullName: "Kenneth Erickson",
    pathMiniature: "assets/cards_ui/kenneth.png",
    subtitle: "San Diego, CA",
  ),
  "anne": User(
    fullName: "Anne Yates",
    pathMiniature: "assets/cards_ui/jesse.png",
    subtitle: "3:10 PM Tuesday, November 12",
  ),
  "marisa": User(
    fullName: "Marisa Fair",
    pathMiniature: "assets/cards_ui/janice.png",
    subtitle: "Berlin, Germany",
    notifications: 4,
  ),
  "kenneth2": User(
    fullName: "Kenneth Erickson",
    letterColor: Color(0xfffb914e),
    backgroundColor: Color(0xfffff0e6),
    nameMiniature: "KE",
    subtitle: "Chicago, IL",
    notifications: 2,
  ),
  "michelle": User(
    fullName: "Michelle Lake",
    pathMiniature: "assets/cards_ui/brenda.png",
    subtitle: "San Diego, CA",
  ),
  "lanette": User(
    fullName: "Lanette Strand",
    pathMiniature: "assets/cards_ui/brenda.png",
    subtitle: "Lake Villa, IL",
  ),
  "joyce": User(
    fullName: "Joyce Tuck",
    letterColor: Color(0xff624afb),
    backgroundColor: Color(0xfff0edff),
    nameMiniature: "JT",
    subtitle: "Southfield, MI",
  ),
  "troy": User(
    fullName: "Troy Brown",
    pathMiniature: "assets/cards_ui/joseph.png",
    subtitle: "Los Angeles, CA",
  ),
  "food": User(
    fullName: "Food Festival - New Delhi",
    pathMiniature: "assets/cards_ui/food.png",
    subtitle: "New Delhi,IND",
  ),
  "anon1": User(
    pathMiniature: "assets/cards_ui/anon1.png",
  ),
  "anon2": User(
    pathMiniature: "assets/cards_ui/anon2.png",
  ),
  "anon3": User(
    pathMiniature: "assets/cards_ui/anon3.png",
  ),
  "anon4": User(
    pathMiniature: "assets/cards_ui/anon4.png",
  ),
};
