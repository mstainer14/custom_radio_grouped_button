import 'package:flutter/material.dart';

class CustomListViewSpacing extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final Axis scrollDirection;
  final bool otherSelected;
  final ScrollController _scrollController = ScrollController();
  CustomListViewSpacing(
      {@required this.children,
      this.spacing = 0.0,
      this.otherSelected = false,
      this.scrollDirection = Axis.vertical});

  Widget build(BuildContext context) {
    if (otherSelected) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);

      return ListView(
        scrollDirection: scrollDirection,
        controller: _scrollController,
        children: children
            .map((c) => Container(
                  padding: EdgeInsets.all(spacing),
                  child: c,
                ))
            .toList(),
      );
    } else {
      return ListView(
        scrollDirection: scrollDirection,
        children: children
            .map((c) => Container(
                  padding: EdgeInsets.all(spacing),
                  child: c,
                ))
            .toList(),
      );
    }
  }
}
