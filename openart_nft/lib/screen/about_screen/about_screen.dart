import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(margin: EdgeInsets.all(Dimens.PADDING_16)),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: Dimens.PADDING_16),
                  child:
                      Text('About OpenArt', style: TxtStyleMobile.link_Large2),
                ),
              ),
              Center(child: Image.asset(AppImage.processor)),
              TextMarginWidget(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_30,
                  top: Dimens.PADDING_16,
                  right: Dimens.PADDING_30,
                ),
                title:
                    'OpenArt help anyone create a beautiful website, landing page, app to collect NFTs digital art',
                style: TxtStyleMobile.txt_Medium(),
                textAlign: TextAlign.center,
              ),
              TextMarginWidget(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_30,
                ),
                title: 'Crypto for Creative Communities',
                textAlign: TextAlign.center,
                style: TxtStyleMobile.link_Large2,
              ),
              TextMarginWidget(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_30,
                  top: Dimens.PADDING_10,
                  right: Dimens.PADDING_30,
                ),
                title:
                    'NFTs—non-fungible tokens—are empowering artists, musicians, and all kinds of genre-defying digital creators to invent a new cultural paradigm. How this emerging culture of digital art ownership looks is up to all of us.',
                style: TxtStyleMobile.txt_Medium(),
              ),
              TextMarginWidget(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_30,
                ),
                title: 'How it work',
                style: TxtStyleMobile.link_Large2,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                  right: Dimens.PADDING_16,
                ),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height / 4,
                        width: size.width / 2 - 27,
                        padding: EdgeInsets.only(top: Dimens.PADDING_10),
                        decoration: BoxDecoration(
                          color: AppColor.offWhite,
                          borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
                        ),
                        child: Column(
                          children: [
                            Image.asset(AppImage.globe, width: 114),
                            SizedBox(height: 13),
                            Text(
                              'Build together',
                              style: TxtStyleMobile.link_Medium,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height / 4,
                        width: size.width / 2 - 27,
                        padding: EdgeInsets.only(top: Dimens.PADDING_10),
                        decoration: BoxDecoration(
                          color: AppColor.offWhite,
                          borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              AppImage.proteced,
                              width: 114,
                            ),
                            SizedBox(height: 13),
                            Text(
                              'Trust',
                              style: TxtStyleMobile.link_Medium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextMarginWidget(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_30,
                  top: Dimens.PADDING_50,
                ),
                title: 'For Creators',
                style: TxtStyleMobile.link_Medium,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_30,
                  right: Dimens.PADDING_30,
                ),
                child: Text(
                  'Creators are invited to join Foundation by members of the community. Once you’ve received an invite, you’ll need to set up a MetaMask wallet with ETH before you can create an artist profile and mint an NFT—which means uploading your JPG, PNG, or video file to IPFS, a decentralized peer-to-peer storage network. It will then be an NFT you can price in ETH and put up for auction on Foundation. ',
                ),
              ),
              TextMarginWidget(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_30,
                  top: Dimens.PADDING_40,
                ),
                title: 'For Collectors',
                textAlign: TextAlign.center,
                style: TxtStyleMobile.link_Medium,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_30,
                  right: Dimens.PADDING_30,
                ),
                child: Text(
                  ' On Foundation, anyone can create a profile to start collecting NFTs. All you’ll need is a MetaMask wallet and ETH, the cryptocurrency used to pay for all transactions on Ethereum. Artists list NFTs for auction at a reserve price, and once the first bid is placed, a 24-hour auction countdown begins. If a bid is placed within the last 15 minutes, the auction extends for another 15 minutes. ',
                ),
              ),
              FooterWidget(size: size, top: Dimens.PADDING_30)
            ],
          ),
        ),
      ),
    );
  }
}

class TextMarginWidget extends StatelessWidget {
  const TextMarginWidget({
    Key? key,
    required this.title,
    required this.style,
    this.textAlign,
    this.margin,
  }) : super(key: key);
  final String title;
  final TextStyle style;
  final EdgeInsetsGeometry? margin;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(title, textAlign: textAlign, style: style),
    );
  }
}
