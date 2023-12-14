import 'package:flutter/material.dart';
import 'package:voting_app/const/layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreen,
    this.tabletScreen,
    this.desktopScreen,
  }) : super(key: key);

  final Widget mobileScreen;
  final Widget? tabletScreen;
  final Widget? desktopScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileScreen;
      } else if (constraints.maxWidth < tabletWidth) {
        return tabletScreen ?? mobileScreen;
      } else {
        return desktopScreen ?? mobileScreen;
      }
    });
  }
}
