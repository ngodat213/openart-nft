import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';

class RaisedGradientButton extends StatelessWidget {
  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height,
    this.width,
    this.borderRadius,
    required this.size,
  }) : super(key: key);
  final Size size;
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
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
        width: width ?? size.width - 33,
        height: height ?? Dimens.HEIGHT_56,
        decoration: BoxDecoration(
          gradient: AppColor.gradientButton,
          borderRadius: BorderRadius.circular(borderRadius ?? Dimens.RADIUS_8),
        ),
        child: Center(child: child),
      ),
    );
  }
}
