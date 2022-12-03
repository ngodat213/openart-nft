import 'package:flutter/material.dart';
import 'package:openart_nft/screen/home_screen/widget/btn_outline.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class LiveAcctionWidget extends StatelessWidget {
  const LiveAcctionWidget({
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
                width: Dimens.SIZE_9,
                height: Dimens.SIZE_9,
                decoration: BoxDecoration(
                  color: AppColor.errorDark,
                  borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: Dimens.PADDING_7,
                ),
                child: Text('Live auctions', style: TxtStyleMobile.h3b),
              )
            ],
          ),
          BtnOutlineWidget(
            onPressed: () {},
            color: AppColor.placeholder,
            borderRadius: Dimens.RADIUS_8,
            child: Text(
              'View all',
              style: TxtStyleMobile.txt_Medium,
            ),
          ),
        ],
      ),
    );
  }
}
