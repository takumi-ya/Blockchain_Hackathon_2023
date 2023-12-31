import 'package:flutter/material.dart';
import 'package:voting_app/const/const_color.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({
    super.key,
    this.color,
    required this.width,
    required this.height,
    required this.radius,
    required this.text,
  });

  final Color? color;
  final double width;
  final double height;
  final double radius;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: FittedBox(
          child: text,
        ),
      ),
    );
  }
}
