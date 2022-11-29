import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(AppImage.image1),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderWidget(),
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
                  CardItemWidget(),
                  PriceWidget()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: Dimens.PADDING_20,
          bottom: Dimens.PADDING_16,
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Reserve Price ', style: TxtStyleMobile.txt_Medium),
              TextSpan(text: '1.50 ETH ', style: TxtStyleMobile.h3b),
              TextSpan(text: '\$2,683.73', style: TxtStyleMobile.link_Small),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: Dimens.PADDING_22),
        width: 342,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
          boxShadow: [
            BoxShadow(
              color: AppColor.placeholder.withOpacity(0.5),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(Dimens.PADDING_10),
              child: Image.asset(
                AppImage.rectangle,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Dimens.PADDING_13,
              ),
              child: Text(
                'Silent Wave',
                style: TxtStyleMobile.h3b,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: Dimens.PADDING_13,
                top: Dimens.PADDING_4,
                right: Dimens.PADDING_22,
                bottom: Dimens.PADDING_16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(AppImage.rectangle),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pawel Czerwinski',
                              style: TxtStyleDesktop.link_Medium),
                          Text('Creator', style: TxtStyleDesktop.txt_XSmall),
                        ],
                      ),
                    ],
                  ),
                  ImageIcon(
                    AssetImage(AppImage.icon_Heart),
                    size: Dimens.SIZE_20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.PADDING_24),
      padding: EdgeInsets.only(
        left: Dimens.PADDING_10,
        right: Dimens.PADDING_10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        color: AppColor.inputBg,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search items, collections, and accounts',
                hintStyle: TxtStyleMobile.txt_XSmall,
                border: InputBorder.none,
                icon: ImageIcon(
                  AssetImage(AppImage.icon_Search),
                  size: Dimens.SIZE_16,
                ),
              ),
            ),
          ),
          ImageIcon(
            AssetImage(AppImage.icon_Microphone),
            size: Dimens.SIZE_16,
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Dimens.PADDING_16,
        Dimens.PADDING_6,
        Dimens.PADDING_16,
        Dimens.PADDING_16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Image.asset(AppImage.logo), Image.asset(AppImage.icon_Menu)],
      ),
    );
  }
}
