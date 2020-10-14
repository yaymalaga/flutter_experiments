import 'package:flutter_experiments/cards_ui/components/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color titleColor;
  final Color subtitleColor;
  final Color iconColor;
  final double titleSize;
  final double subtitleSize;
  final FontWeight titleWeight;
  final UserAvatar avatar;
  final EdgeInsets margin;
  final Widget trailing;

  const Header({
    this.avatar,
    @required this.title,
    this.titleColor = const Color(0xff131721),
    this.titleSize = 16,
    this.subtitle,
    this.subtitleColor = const Color(0xff858997),
    this.subtitleSize = 14,
    this.margin,
    this.titleWeight = FontWeight.w400,
    this.iconColor = const Color(0xff8f94a2),
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    Text subtitleWidget;
    if (subtitle != null) {
      subtitleWidget = Text(
        subtitle,
        style: GoogleFonts.lato(
          fontSize: subtitleSize,
          color: subtitleColor,
        ),
        overflow: TextOverflow.ellipsis,
      );
    }

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: avatar,
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.lato(
          fontSize: titleSize,
          color: titleColor,
          fontWeight: titleWeight,
        ),
      ),
      subtitle: margin == null
          ? subtitleWidget
          : Container(
              margin: margin,
              child: subtitleWidget,
            ),
      trailing: trailing == null
          ? IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: iconColor,
              ),
              onPressed: () => {},
            )
          : InkWell(
              child: trailing,
            ),
    );
  }
}
