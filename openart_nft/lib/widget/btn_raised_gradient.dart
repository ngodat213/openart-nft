import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/txt_style.dart';

class RaisedGradientButton extends StatelessWidget {
  const RaisedGradientButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.borderRadius,
  }) : super(key: key);
  final String title;
  final double width;
  final double height;
  final double borderRadius;
  final Function onPressed;

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
          gradient: AppColor.gradientButton,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            title,
            style: TxtStyleMobile.txt_Medium(color: AppColor.offWhite),
          ),
        ),
      ),
    );
  }
}
