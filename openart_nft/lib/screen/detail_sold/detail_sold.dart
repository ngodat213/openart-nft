import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/txt_style.dart';
import '../../theme/image.dart';
import '../../widget/card_activity.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/nft_detail.dart';
import '../../widget/view_on.dart';
import 'widget/card_sold.dart';

class DetailSoldScreen extends StatelessWidget {
  const DetailSoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                margin: EdgeInsets.all(Dimens.PADDING_16),
                size: size,
              ),
              NFTDetailWidget(
                size: size,
                url: AppImage.rectangle4,
                title: 'Silent Color',
                userName: 'HydraCoder',
                discription:
                    'Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.',
                hagtag: ['color', 'circle', 'black', 'art'],
              ),
              ViewOnWidget(
                onPressed: () {},
                prefixIcon: AppImage.icon_star,
                title: 'View on Etherscan',
                suffixIcon: AppImage.icon_external,
                magin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  top: Dimens.PADDING_24,
                  bottom: Dimens.PADDING_16,
                ),
              ),
              ViewOnWidget(
                onPressed: () {},
                prefixIcon: AppImage.icon_star,
                title: 'View on IPFS',
                suffixIcon: AppImage.icon_external,
                magin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  bottom: Dimens.PADDING_16,
                ),
              ),
              ViewOnWidget(
                onPressed: () {},
                prefixIcon: AppImage.icon_star,
                title: 'View IPFS Metadata',
                suffixIcon: AppImage.icon_external,
                magin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  bottom: Dimens.PADDING_16,
                ),
              ),
              CardSoldWidget(size: size),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_24,
                  bottom: Dimens.PADDING_24,
                ),
                child: Text(
                  'Activity',
                  style: TxtStyleMobile.txt_Large,
                ),
              ),
              CardActivityWidget(
                avatarUrl: AppImage.avatarImage,
                title: 'Auction won by David',
                daytime: 'June 04, 2021 at 12:00am',
                widget: Text(
                  'Sold for 1.50 ETH',
                  style: TxtStyleMobile.link_Medium,
                ),
              ),
              CardActivityWidget(
                avatarUrl: AppImage.avatarImage,
                title: 'Bid place by @pawel09',
                daytime: 'June 06, 2021 at 12:00am',
                widget: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '1.50 ETH ', style: TxtStyleMobile.link_Medium),
                  TextSpan(text: '\$2,683.73', style: TxtStyleMobile.txt_Small)
                ])),
              ),
              CardActivityWidget(
                avatarUrl: AppImage.avatarImage,
                title: 'Auction won by David',
                daytime: 'June 04, 2021 at 12:00am',
                widget: RichText(
                    text: TextSpan(children: [
                  TextSpan(text: '1.00 ETH', style: TxtStyleMobile.link_Medium),
                  TextSpan(text: '\$2,683.73', style: TxtStyleMobile.txt_Small)
                ])),
              ),
              FooterWidget(size: size, top: Dimens.HEIGHT_56),
            ],
          ),
        ),
      ),
    );
  }
}
