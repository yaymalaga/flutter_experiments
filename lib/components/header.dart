import 'package:cards_ui/components/user_avatar.dart';
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

  Header({
    this.avatar,
    @required this.title,
    this.titleColor = const Color(0xff131721),
    this.titleSize = 16,
    this.subtitle,
    this.subtitleColor = const Color(0xff858997),
    this.subtitleSize = 14,
    this.margin,
    this.titleWeight = FontWeight.w500,
    this.iconColor = const Color(0xff8f94a2),
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    var subtitleWidget;
    if (this.subtitle != null) {
      subtitleWidget = Text(
        this.subtitle,
        style: GoogleFonts.lato(
          fontSize: this.subtitleSize,
          color: this.subtitleColor,
          fontWeight: FontWeight.w500,
        ),
        overflow: TextOverflow.ellipsis,
      );
    }

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: this.avatar,
      title: Text(
        this.title,
        style: GoogleFonts.lato(
          fontSize: this.titleSize,
          color: this.titleColor,
          fontWeight: this.titleWeight,
        ),
      ),
      subtitle: margin == null
          ? subtitleWidget
          : Container(
              child: subtitleWidget,
              margin: this.margin,
            ),
      trailing: this.trailing == null
          ? IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: this.iconColor,
              ),
              onPressed: () => {},
            )
          : InkWell(
              child: this.trailing,
            ),
    );
  }
}
