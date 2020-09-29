import 'package:cards_ui/cards/card6/components/bar.dart';
import 'package:flutter/material.dart';

class DownloadsBars extends StatelessWidget {
  final List<double> proportionalHeights;

  DownloadsBars({@required this.proportionalHeights});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < proportionalHeights.length; i++) ...[
            Bar(height: constrains.maxHeight * proportionalHeights[i]),
            if (i != proportionalHeights.length - 1) SizedBox(width: 10)
          ]
        ],
      ),
    );
  }
}
