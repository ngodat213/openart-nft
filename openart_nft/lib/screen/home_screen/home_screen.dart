import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/divider.dart';
import '../../widget/footer.dart';
import '../../widget/raised_gradient_button.dart';
import '../../widget/border_gradient_button.dart';
import 'widget/follow_user.dart';
import 'widget/hot_bit.dart';
import 'widget/hot_collection.dart';
import 'widget/list_hotbid.dart';
import 'widget/more_image.dart';
import 'widget/row_image.dart';
import 'widget/sold_for.dart';
import 'widget/card_item.dart';
import 'widget/current_bid.dart';
import 'widget/price.dart';
import 'widget/search_bar.dart';
import '../../widget/header.dart';
import 'widget/live_acction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [AppImage.rectangle5, AppImage.rectangle6];
    final List<String> hotCollection = [
      AppImage.rectangle7,
      AppImage.rectangle8,
      AppImage.rectangle9,
      AppImage.rectangle10
    ];
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(top: 0, right: 0, child: Image.asset(AppImage.image1)),
              Column(
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
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Discover, collect, and sell',
                      style: TxtStyleDesktop.link_Medium,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: Dimens.PADDING_4,
                      bottom: Dimens.PADDING_22,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Your Digital Art',
                      style: TxtStyleDesktop.h3b,
                    ),
                  ),
                  SearchBarWidget(),
                  Container(
                    margin: EdgeInsets.only(top: Dimens.PADDING_24),
                    child: CardItemWidget(
                      urlImage: AppImage.rectangle,
                      description: "Silent Wave",
                      name: 'Pawel Czerwinski',
                      status: 'Creator',
                      avatarUrl: AppImage.avatarImage,
                      size: size,
                    ),
                  ),
                  PriceWidget(eth: 1.5, usd: 2683.73),
                  RaisedGradientButton(
                    size: size,
                    onPressed: () {},
                    child: Text(
                      'Place a bid',
                      style: TxtStyleMobile.link_Large1,
                    ),
                  ),
                  SizedBox(height: 20),
                  BorderGradinetButton(
                    size: size,
                    onPressed: () {},
                    child: Text(
                      'View artwork',
                      style: TxtStyleMobile.link_Large2,
                    ),
                  ),
                  LiveAcctionWidget(),
                  CardItemWidget(
                    urlImage: AppImage.rectangle1,
                    description: "Silent Color",
                    name: 'Pawel Czerwinski',
                    status: 'Creator',
                    avatarUrl: AppImage.avatarImage,
                    size: size,
                  ),
                  SizedBox(height: Dimens.HEIGHT_12),
                  SoldForWidget(size: size, eth: '2.00'),
                  SizedBox(height: Dimens.HEIGHT_40),
                  CardItemWidget(
                    urlImage: AppImage.rectangle2,
                    description: "Silent Color",
                    name: 'Pawel Czerwinski',
                    status: 'Creator',
                    avatarUrl: AppImage.avatarImage,
                    size: size,
                  ),
                  SizedBox(height: Dimens.HEIGHT_12),
                  SoldForWidget(size: size, eth: '2.00'),
                  SizedBox(height: Dimens.HEIGHT_40),
                  CardItemWidget(
                    urlImage: AppImage.rectangle3,
                    description: "Silent Color",
                    name: 'Pawel Czerwinski',
                    status: 'Creator',
                    avatarUrl: AppImage.avatarImage,
                    size: size,
                  ),
                  SizedBox(height: Dimens.HEIGHT_12),
                  CurrentBidWidget(
                    size: size,
                    current: '2.00',
                    timeEnding: '27m 30s',
                  ),
                  SizedBox(height: Dimens.HEIGHT_40),
                  CardItemWidget(
                    urlImage: AppImage.rectangle4,
                    description: "Silent Color",
                    name: 'Pawel Czerwinski',
                    status: 'Creator',
                    avatarUrl: AppImage.avatarImage,
                    size: size,
                  ),
                  SizedBox(height: Dimens.HEIGHT_12),
                  CurrentBidWidget(
                    size: size,
                    current: '2.00',
                    timeEnding: '27m 30s',
                  ),
                  HotBidWidget(),
                  ListHotbidWidget(images: images),
                  HotCollectionWidget(),
                  RowImageWidget(
                      image1: hotCollection[0], image2: hotCollection[1]),
                  SizedBox(height: 12),
                  RowImageWidget(
                      image1: hotCollection[2], image2: hotCollection[3]),
                  MoreImageWidget(
                    onPressed: () {},
                    title: 'Water and sunflower',
                    child: Text('30 items', style: TxtStyleMobile.link_Medium),
                  ),
                  FollowUserWidget(
                    avatarUrl: AppImage.avatarImage,
                    userName: 'Rodion Kutsaev',
                  ),
                  SizedBox(height: Dimens.HEIGHT_56),
                  BorderGradinetButton(
                    size: size,
                    onPressed: () {},
                    child: Text(
                      'View more collection',
                      style: TxtStyleMobile.link_Large2,
                    ),
                  ),
                  DividerWidget(
                    color: AppColor.placeholder,
                    width: size.width - 48,
                    margin: EdgeInsets.only(top: Dimens.PADDING_24),
                  ),
                  FooterWidget(size: size),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
