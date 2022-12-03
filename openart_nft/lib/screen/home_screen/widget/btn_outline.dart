import 'package:flutter/material.dart';

class BtnOutlineWidget extends StatelessWidget {
  const BtnOutlineWidget({
    super.key,
    required this.onPressed,
    required this.color,
    required this.borderRadius,
    required this.child,
  });
  final Function onPressed;
  final Color color;
  final double borderRadius;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
