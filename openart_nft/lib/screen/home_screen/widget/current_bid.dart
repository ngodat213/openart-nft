import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class CurrentBidWidget extends StatelessWidget {
  const CurrentBidWidget({
    Key? key,
    required this.size,
    required this.current,
    required this.timeEnding,
  }) : super(key: key);
  final String current;
  final String timeEnding;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width - 32,
        height: Dimens.HEIGHT_64,
        padding: EdgeInsets.only(top: Dimens.PADDING_10),
        decoration: BoxDecoration(
          color: AppColor.offWhite,
          border: Border.all(width: 1, color: AppColor.body),
          borderRadius: BorderRadius.circular(Dimens.RADIUS_51),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: Dimens.SIZE_6,
                      height: Dimens.SIZE_6,
                      decoration: BoxDecoration(
                        color: AppColor.successDefault,
                        borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Dimens.PADDING_4,
                      ),
                      child:
                          Text('Current bid', style: TxtStyleMobile.txt_Medium),
                    )
                  ],
                ),
                Text(current + ' ETH', style: TxtStyleMobile.link_Large2)
              ],
            ),
            Column(
              children: [
                Text('Ending in', style: TxtStyleMobile.txt_Medium),
                Text(timeEnding, style: TxtStyleMobile.link_Large2)
              ],
            )
          ],
        ),
      ),
    );
  }
}
