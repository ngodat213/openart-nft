import 'package:flutter/material.dart';

import '../../manager/manager_routes.dart';
import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/base_navigation.dart';
import '../../widget/divider.dart';
import '../../widget/footer.dart';
import '../../widget/btn_raised_gradient.dart';
import '../../widget/btn_border_gradient.dart';
import '../detail_auction/detail_auction.dart';
import '../detail_sold/detail_sold.dart';
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
                  Center(
                    child: RaisedGradientButton(
                      width: size.width - 32,
                      height: Dimens.HEIGHT_56,
                      title: 'Place a bid',
                      onPressed: () {
                        BaseNavigation.push(context,
                            routeName: ManagerRoutes.detail_sold);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: BorderGradinetButton(
                      size: size,
                      title: 'View artwork',
                      onPressed: () {
                        BaseNavigation.push(context,
                            routeName: ManagerRoutes.detail_sold);
                      },
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
                  SoldForButtonWidget(
                    size: size,
                    eth: '2.00',
                    onPressed: () {
                      BaseNavigation.push(context,
                          routeName: ManagerRoutes.detail_sold);
                    },
                  ),
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
                  SoldForButtonWidget(
                    size: size,
                    eth: '2.00',
                    onPressed: () {
                      BaseNavigation.push(context,
                          routeName: ManagerRoutes.detail_sold);
                    },
                  ),
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
                  CurrentBidButtonWidget(
                    size: size,
                    current: '2.00',
                    timeEnding: '27m 30s',
                    onPressed: () {
                      BaseNavigation.push(context,
                          routeName: ManagerRoutes.detail_auction);
                    },
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
                  CurrentBidButtonWidget(
                    size: size,
                    current: '2.00',
                    timeEnding: '27m 30s',
                    onPressed: () {
                      BaseNavigation.push(context,
                          routeName: ManagerRoutes.detail_auction);
                    },
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
                    title: 'View more collection',
                  ),
                  DividerWidget(
                    color: AppColor.placeholder,
                    width: size.width - 48,
                    margin: EdgeInsets.only(top: Dimens.PADDING_24),
                  ),
                  FooterWidget(size: size, top: Dimens.HEIGHT_84),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
