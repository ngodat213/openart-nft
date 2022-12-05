import 'package:flutter/material.dart';

import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/nft_detail.dart';
import '../detail_sold/detail_sold.dart';
import '../detail_sold/widget/view_on.dart';
import 'widget/card_activity.dart';
import 'widget/card_auction.dart';

class DetailAuctionScreen extends StatelessWidget {
  const DetailAuctionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              CardAuctionWidget(size: size),
              Container(
                padding: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
                child: Text(
                  'Activity',
                  style: TxtStyleMobile.txt_Large,
                ),
              ),
              SizedBox(height: Dimens.HEIGHT_24),
              CardActivityWidget(
                title: 'Bid place by @pawel09',
                daytime: 'June 06, 2021 at 12:00am',
                eth: '1.50',
                total: '2,683.73',
              ),
              SizedBox(height: Dimens.HEIGHT_12),
              CardActivityWidget(
                title: 'Listing by @han152',
                daytime: 'June 04, 2021 at 12:00am',
                eth: '1.00',
                total: '2,683.73',
              ),
              FooterWidget(size: size, top: 44)
            ],
          ),
        ),
      ),
    );
  }
}
