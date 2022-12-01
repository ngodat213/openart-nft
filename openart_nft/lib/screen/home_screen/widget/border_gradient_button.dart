import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';

class BorderGradinetButton extends StatelessWidget {
  const BorderGradinetButton({
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
        width: size.width - 33,
        height: Dimens.HEIGHT_56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
          gradient: AppColor.gradientButton,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: size.width - 20,
            height: Dimens.HEIGHT_12,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
            ),
            child: InkWell(
              onTap: onPressed.call(),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
