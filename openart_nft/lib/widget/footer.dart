import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';
import '../theme/txt_style.dart';
import 'border_gradient_button.dart';
import 'divider.dart';
import 'raised_gradient_button.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextLogoWidget(size: size),
        SizedBox(height: Dimens.HEIGHT_30),
        RaisedGradientButton(
          size: size,
          onPressed: () {},
          child: Text(
            'Earn now',
            style: TxtStyleMobile.link_Large1,
          ),
        ),
        SizedBox(height: Dimens.HEIGHT_16),
        BorderGradinetButton(
          size: size,
          onPressed: () {},
          child: Text(
            'Discover more',
            style: TxtStyleMobile.link_Large2,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: Dimens.PADDING_89),
          height: size.height / 2.7,
          decoration: BoxDecoration(color: AppColor.titleActive),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: Dimens.PADDING_24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Instagram',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Twitter',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Discord',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child:
                              Text('Blog', style: TxtStyleMobile.link_Medium1),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child:
                              Text('About', style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Community Guidelines',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Terms of Service',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Privacy',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child: Text('Careers',
                              style: TxtStyleMobile.link_Medium1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Dimens.PADDING_10),
                          child:
                              Text('Help', style: TxtStyleMobile.link_Medium1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              DividerWidget(
                color: AppColor.line,
                margin: EdgeInsets.only(
                    top: Dimens.PADDING_10, bottom: Dimens.PADDING_30),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimens.PADDING_16),
                child: Text(
                  '© 2021 Openart',
                  style: TxtStyleMobile.txt_Small1,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class TextLogoWidget extends StatelessWidget {
  const TextLogoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: Dimens.HEIGHT_110),
          child: Image.asset(
            AppImage.logo,
            height: Dimens.HEIGHT_46,
            width: Dimens.HEIGHT_177,
            fit: BoxFit.cover,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'The ', style: TxtStyleMobile.txt_Large),
              TextSpan(text: 'New ', style: TxtStyleMobile.h3),
              TextSpan(text: 'Creative ', style: TxtStyleMobile.h3b),
              TextSpan(text: 'Economy', style: TxtStyleMobile.h2b)
            ],
          ),
        ),
      ],
    );
  }
}
