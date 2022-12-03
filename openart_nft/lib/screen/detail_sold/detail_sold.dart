import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/txt_style.dart';
import '../../theme/image.dart';
import '../../widget/btn_avatar_user.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/nft_detail.dart';
import '../home_screen/widget/small_avataruser.dart';

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
                margin: EdgeInsets.fromLTRB(
                  Dimens.PADDING_16,
                  Dimens.PADDING_6,
                  Dimens.PADDING_16,
                  Dimens.PADDING_16,
                ),
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
                prefixIcon: AppImage.icon_Star,
                title: 'View on Etherscan',
                suffixIcon: AppImage.icon_External,
                magin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  top: Dimens.PADDING_24,
                  bottom: Dimens.PADDING_16,
                ),
              ),
              ViewOnWidget(
                onPressed: () {},
                prefixIcon: AppImage.icon_Star,
                title: 'View on IPFS',
                suffixIcon: AppImage.icon_External,
                magin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  bottom: Dimens.PADDING_16,
                ),
              ),
              ViewOnWidget(
                onPressed: () {},
                prefixIcon: AppImage.icon_Star,
                title: 'View IPFS Metadata',
                suffixIcon: AppImage.icon_External,
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
                result: Text(
                  'Sold for 1.50 ETH',
                  style: TxtStyleMobile.link_Medium,
                ),
              ),
              CardActivityWidget(
                avatarUrl: AppImage.avatarImage,
                title: 'Bid place by @pawel09',
                daytime: 'June 06, 2021 at 12:00am',
                result: RichText(
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
                result: RichText(
                    text: TextSpan(children: [
                  TextSpan(text: '1.00 ETH', style: TxtStyleMobile.link_Medium),
                  TextSpan(text: '\$2,683.73', style: TxtStyleMobile.txt_Small)
                ])),
              ),
              FooterWidget(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class CardActivityWidget extends StatelessWidget {
  const CardActivityWidget({
    Key? key,
    required this.avatarUrl,
    required this.title,
    required this.daytime,
    required this.result,
  }) : super(key: key);
  final String avatarUrl;
  final String title;
  final String daytime;
  final Widget result;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
        top: Dimens.PADDING_13,
      ),
      padding: EdgeInsets.fromLTRB(
        Dimens.PADDING_13,
        Dimens.PADDING_13,
        Dimens.PADDING_20,
        Dimens.PADDING_13,
      ),
      decoration: BoxDecoration(
        color: AppColor.offWhite,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AvatarUserWidget(
                url: avatarUrl,
                status: true,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_13,
                  right: Dimens.PADDING_75,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TxtStyleMobile.link_XSmall,
                    ),
                    Text(
                      daytime,
                      style: TxtStyleMobile.txt_Small,
                    )
                  ],
                ),
              ),
              Image.asset(AppImage.icon_External),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: Dimens.PADDING_60),
            child: result,
          )
        ],
      ),
    );
  }
}

class CardSoldWidget extends StatelessWidget {
  const CardSoldWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width - 32,
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.PADDING_20, vertical: Dimens.PADDING_20),
        margin: EdgeInsets.only(top: Dimens.PADDING_38),
        decoration: BoxDecoration(
          color: AppColor.offWhite,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
          boxShadow: [AppColor.boxShadow],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(AppImage.icon_starBid)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'Sold for ', style: TxtStyleMobile.txt_Large),
                  TextSpan(text: ' 1.50 ETH ', style: TxtStyleMobile.h3b),
                  TextSpan(
                      text: ' \$2,683.73 ', style: TxtStyleMobile.link_Medium),
                ],
              ),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Text('Owner by ', style: TxtStyleMobile.txt_Large),
                NoneAvatarUserWidget(
                  margin: EdgeInsets.only(left: Dimens.PADDING_10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
