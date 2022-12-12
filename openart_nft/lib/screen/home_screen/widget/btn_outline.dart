import 'package:flutter/material.dart';

class BtnOutlineWidget extends StatelessWidget {
  const BtnOutlineWidget({
    super.key,
    required this.onPressed,
    required this.color,
    required this.borderRadius,
    required this.child,
    this.margin,
    this.height,
  });
  final Function onPressed;
  final Color color;
  final double borderRadius;
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(width: 1, color: color),
      ),
      child: InkWell(
          onTap: () {
            onPressed.call();
          },
          child: child),
    );
  }
}
