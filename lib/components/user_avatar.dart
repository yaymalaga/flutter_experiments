import 'package:cards_ui/utils/users.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final User user;
  final double radius;

  const UserAvatar({@required this.user, this.radius = 30});

  @override
  Widget build(BuildContext context) {
    CircleAvatar avatar;

    if (this.user.pathMiniature == null) {
      avatar = CircleAvatar(
        radius: this.radius,
        child: Text(
          this.user.nameMiniature,
          style: TextStyle(
            color: this.user.letterColor,
          ),
        ),
        backgroundColor: this.user.backgroundColor,
      );
    } else {
      avatar = CircleAvatar(
        radius: this.radius,
        backgroundImage: AssetImage(
          this.user.pathMiniature,
        ),
      );
    }

    return avatar;
  }
}
