import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class MoreImageWidget extends StatelessWidget {
  const MoreImageWidget({
    Key? key,
    required this.title,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Widget child;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Dimens.PADDING_16,
        Dimens.PADDING_20,
        Dimens.PADDING_16,
        Dimens.PADDING_38,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimens.PADDING_7,
            ),
            child: Text(title, style: TxtStyleMobile.h3b),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.RADIUS_34),
              border: Border.all(width: 1, color: AppColor.placeholder),
            ),
            child: InkWell(
                onTap: () {
                  onPressed.call();
                },
                child: child),
          )
        ],
      ),
    );
  }
}
