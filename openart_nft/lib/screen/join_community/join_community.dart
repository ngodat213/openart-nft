import 'package:flutter/material.dart';
import 'package:openart_nft/widget/header.dart';

import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/btn_raised_gradient.dart';
import '../../widget/footer.dart';

class JoinCommunityScreen extends StatelessWidget {
  const JoinCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(margin: EdgeInsets.all(Dimens.PADDING_16)),
              Container(
                margin: EdgeInsets.only(top: Dimens.PADDING_16),
                child: Text(
                  'Join the Community Upvote\nto access creator tools.',
                  style: TxtStyleMobile.link_Large2,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  Dimens.PADDING_24,
                  Dimens.PADDING_20,
                  Dimens.PADDING_24,
                  Dimens.PADDING_30,
                ),
                child: Text(
                  'With the Community Upvote, artists are encouraged to support other artists and to set the stage for a model of community-led curation that puts power in the hands of creators.',
                  style: TxtStyleMobile.txt_Medium(),
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedGradientButton(
                title: 'Join Community Upvote',
                width: size.width - 32,
                borderRadius: Dimens.RADIUS_8,
                height: Dimens.HEIGHT_56,
                onPressed: () {},
              ),
              Image.asset(AppImage.globe),
              Text(
                'Current number of profiles on the\nCommunity Upvote:',
                style: TxtStyleMobile.txt_Medium(),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(top: Dimens.PADDING_16),
                child: Text('52.000', style: TxtStyleMobile.h3b),
              ),
              FooterWidget(size: size, top: Dimens.HEIGHT_38)
            ],
          ),
        ),
      ),
    );
  }
}
