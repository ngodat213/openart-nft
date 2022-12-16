import 'package:flutter/material.dart';

import '../../theme/dimens.dart';
import '../../theme/txt_style.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/stepper.dart';
import 'widget/btn_total_wallet.dart';

class AddWalletStep1Screen extends StatelessWidget {
  const AddWalletStep1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          StepperWidget(size: size, step1: 2, step2: 1, step3: 1),
          SizedBox(height: Dimens.PADDING_24),
          Container(
              margin: EdgeInsets.only(left: Dimens.PADDING_16),
              child: BtnTotalWalletWidget(size: size, title: 'Bank wallet')),
          SizedBox(height: Dimens.PADDING_24),
          Container(
              margin: EdgeInsets.only(left: Dimens.PADDING_16),
              child: BtnTotalWalletWidget(size: size, title: 'Coin wallet')),
          SizedBox(height: Dimens.PADDING_24),
          Container(
              margin: EdgeInsets.only(left: Dimens.PADDING_16),
              child: BtnTotalWalletWidget(size: size, title: 'Wallet connect')),
          FooterWidget(size: size, top: Dimens.HEIGHT_110),
        ]),
      )),
    );
  }
}
