import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/stepper.dart';

class AddWalletStep2Screen extends StatelessWidget {
  const AddWalletStep2Screen({super.key});

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
          StepperWidget(size: size, step1: 3, step2: 2, step3: 1),
          Container(
            margin: EdgeInsets.only(
                top: Dimens.PADDING_40, bottom: Dimens.PADDING_110),
            width: size.width - 32,
            height: size.height / 2.2,
            decoration: BoxDecoration(
              color: AppColor.offWhite,
              borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
            ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: Dimens.PADDING_45, bottom: Dimens.PADDING_20),
                    child: Image.asset(AppImage.qr)),
                Text('Scan to conect wallet',
                    style: TxtStyleMobile.txt_Medium()),
              ],
            ),
          ),
          FooterWidget(size: size, top: Dimens.PADDING_20)
        ]),
      )),
    );
  }
}
