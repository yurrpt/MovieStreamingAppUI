import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.child, this.color, this.width, this.height, this.gradient, this.decoration}) : super(key: key);

  final Widget? child;
  final Color? color;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.dynamicWidth(.750),
      height: height ?? context.dynamicHeight(.280),
      decoration: decoration ??
          BoxDecoration(
            gradient: gradient ??
                LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: Constants.cardLinears,
                ),
            color: color ?? Constants.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
      child: child,
    );
  }
}
