import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/txt_style.dart';

class RaisedGradientButton extends StatelessWidget {
  const RaisedGradientButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.height,
    required this.width,
  }) : super(key: key);
  final String title;
  final Function onPressed;
  final double height;
  final double width;

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
        // size.width - 32,
        // Dimens.HEIGHT_56,
        decoration: BoxDecoration(
          gradient: AppColor.gradientButton,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        ),
        child: Center(child: Text(title, style: TxtStyleMobile.link_Large1)),
      ),
    );
  }
}
