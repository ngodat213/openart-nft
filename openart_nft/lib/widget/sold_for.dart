import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/txt_style.dart';

class SoldForButtonWidget extends StatelessWidget {
  const SoldForButtonWidget({
    Key? key,
    required this.size,
    required this.eth,
    required this.onPressed,
  }) : super(key: key);
  final String eth;
  final Size size;
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
        width: size.width - 32,
        height: Dimens.HEIGHT_64,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.offWhite,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Sold For ', style: TxtStyleMobile.txt_Large),
              TextSpan(text: eth + ' ETH', style: TxtStyleMobile.h3b)
            ],
          ),
        ),
      ),
    );
  }
}
