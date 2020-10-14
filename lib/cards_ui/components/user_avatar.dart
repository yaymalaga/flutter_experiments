import 'package:flutter_experiments/cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final User user;
  final double radius;

  const UserAvatar({@required this.user, this.radius = 30});

  @override
  Widget build(BuildContext context) {
    CircleAvatar avatar;

    if (user.pathMiniature == null) {
      avatar = CircleAvatar(
        radius: radius,
        backgroundColor: user.backgroundColor,
        child: Text(
          user.nameMiniature,
          style: TextStyle(
            color: user.letterColor,
          ),
        ),
      );
    } else {
      avatar = CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(
          user.pathMiniature,
        ),
      );
    }

    return avatar;
  }
}
