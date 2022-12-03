import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class HotBidWidget extends StatelessWidget {
  const HotBidWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Dimens.PADDING_16,
        Dimens.PADDING_110,
        Dimens.PADDING_16,
        Dimens.PADDING_38,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: Dimens.SIZE_19,
                height: Dimens.SIZE_19,
                child: Image.asset(AppImage.icon_fire),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: Dimens.PADDING_7,
                ),
                child: Text('Hot bid', style: TxtStyleMobile.h3b),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: Dimens.PADDING_16),
                child: Image.asset(
                  AppImage.icon_BackArrow,
                  width: Dimens.SIZE_24,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: Dimens.PADDING_16),
                child: Image.asset(
                  AppImage.icon_ForwardArrow,
                  width: Dimens.SIZE_24,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
