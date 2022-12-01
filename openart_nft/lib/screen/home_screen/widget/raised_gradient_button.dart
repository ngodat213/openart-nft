import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';

class RaisedGradientButton extends StatelessWidget {
  const RaisedGradientButton({
    Key? key,
    required this.size,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final Function onPressed;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width - 32,
        height: Dimens.HEIGHT_56,
        decoration: BoxDecoration(
          gradient: AppColor.gradientButton,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        ),
        child: InkWell(
          onTap: onPressed.call(),
          child: Center(child: child),
        ),
      ),
    );
  }
}
