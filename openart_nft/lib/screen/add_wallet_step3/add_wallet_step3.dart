import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/txt_style.dart';
import '../../widget/btn_border_gradient.dart';
import '../../widget/btn_raised_gradient.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/stepper.dart';

class AddWalletStep3Screen extends StatelessWidget {
  const AddWalletStep3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          HeaderWidget(
            margin: EdgeInsets.all(Dimens.PADDING_16),
            size: size,
          ),
          Container(
              margin: EdgeInsets.only(
                  left: Dimens.PADDING_16, top: Dimens.PADDING_30),
              child: Column(
                children: [
                  Text('Add wallet to pay', style: TxtStyleMobile.h3b),
                  Text('Easy to sell your Digital Art with 3 step',
                      style: TxtStyleMobile.txt_Medium()),
                ],
              )),
          SizedBox(height: Dimens.PADDING_24),
          StepperWidget(size: size, step1: 3, step2: 3, step3: 2),
          SizedBox(height: Dimens.PADDING_60),
          Container(
            margin: EdgeInsets.only(
                left: Dimens.PADDING_22, right: Dimens.PADDING_22),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Terms of service', style: TxtStyleMobile.link_Large2),
                  SizedBox(height: Dimens.PADDING_10),
                  Text(
                      'Please take a few minutes to read and understand Stacks Terms of Service. To continue, you’ll need to accept the terms of services by checking the boxes.',
                      style: TxtStyleMobile.txt_Medium(),
                      textAlign: TextAlign.center),
                  SizedBox(height: Dimens.PADDING_20),
                  CheckboxListTile(
                      value: false,
                      onChanged: (val) {},
                      activeColor: AppColor.activity,
                      title: Text('I am at least 13 year old'),
                      controlAffinity: ListTileControlAffinity.leading),
                  CheckboxListTile(
                      value: false,
                      onChanged: (val) {},
                      activeColor: AppColor.activity,
                      title: Text('I agree  terms of service'),
                      controlAffinity: ListTileControlAffinity.leading)
                ]),
          ),
          SizedBox(height: Dimens.HEIGHT_56),
          RaisedGradientButton(
              size: size,
              onPressed: () {},
              child: Text('Let’s go', style: TxtStyleMobile.link_Large1)),
          SizedBox(height: Dimens.HEIGHT_12),
          BorderGradinetButton(
              size: size,
              onPressed: () {},
              child: Text('Cancel', style: TxtStyleMobile.link_Large2)),
          FooterWidget(size: size, top: Dimens.HEIGHT_100)
        ]),
      )),
    );
  }
}
