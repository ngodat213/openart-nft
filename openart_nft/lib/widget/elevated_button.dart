import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/txt_style.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.title,
    required this.color,
    required this.textColor,
    required this.borderRadius,
  }) : super(key: key);

  final double width;
  final double height;
  final Function onPressed;
  final String title;
  final Color color;
  final Color textColor;
  final double borderRadius;

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
        child: Center(
          child: Text(
            title,
            style: TxtStyleMobile.txt_Medium(color: textColor),
          ),
        ),
      ),
    );
  }
}
