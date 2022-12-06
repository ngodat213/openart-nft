import 'package:flutter/material.dart';

import '../theme/colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.color,
    required this.borderRadius,
    required this.child,
  }) : super(key: key);

  final double width;
  final double height;
  final Function onPressed;
  final Color color;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed.call(),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(AppColor.bgColor),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(child: child),
      ),
    );
  }
}
