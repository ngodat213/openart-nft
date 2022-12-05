import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/txt_style.dart';

class ViewOnWidget extends StatelessWidget {
  const ViewOnWidget({
    Key? key,
    required this.onPressed,
    required this.prefixIcon,
    required this.title,
    required this.suffixIcon,
    this.magin,
  }) : super(key: key);
  final Function onPressed;
  final String prefixIcon;
  final String title;
  final String suffixIcon;
  final EdgeInsetsGeometry? magin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.PADDING_16),
      margin: magin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_16),
        color: AppColor.offWhite,
        boxShadow: [AppColor.boxShadow],
      ),
      child: InkWell(
        onTap: onPressed.call(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(prefixIcon,
                    width: Dimens.SIZE_24, height: Dimens.SIZE_24),
                Container(
                  margin: EdgeInsets.only(left: Dimens.PADDING_30),
                  child: Text(title, style: TxtStyleMobile.link_Medium),
                ),
              ],
            ),
            Image.asset(suffixIcon,
                width: Dimens.SIZE_24, height: Dimens.SIZE_24),
          ],
        ),
      ),
    );
  }
}
