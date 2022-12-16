import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';
import '../theme/txt_style.dart';
import 'divider.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    Key? key,
    required this.size,
    required this.step1,
    required this.step2,
    required this.step3,
  }) : super(key: key);
  // 1: wait, 2: doing, 3: success
  final Size size;
  final int step1;
  final int step2;
  final int step3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimens.PADDING_24, right: Dimens.PADDING_24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _stepNumber(1, 'Select', step1),
        DividerWidget(
            color: AppColor.placeholder,
            width: size.width / 5.5,
            margin: EdgeInsets.only(bottom: Dimens.PADDING_13)),
        _stepNumber(2, 'Scan', step2),
        DividerWidget(
            color: AppColor.placeholder,
            width: size.width / 5.5,
            margin: EdgeInsets.only(bottom: Dimens.PADDING_13)),
        _stepNumber(3, 'Confirm', step3)
      ]),
    );
  }

  Column _stepNumber(int number, String title, int status) {
    return Column(children: [
      Container(
          width: Dimens.HEIGHT_40,
          height: Dimens.HEIGHT_40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
              gradient: status == 2 || status == 3
                  ? AppColor.primaryColor
                  : LinearGradient(colors: [AppColor.line, AppColor.line])),
          child: status == 3
              ? Image.asset(AppImage.icon_check)
              : Text(number.toString(),
                  style: TxtStyleMobile.link_XSmall(
                      color: status == 2
                          ? AppColor.offWhite
                          : AppColor.placeholder))),
      SizedBox(height: Dimens.HEIGHT_1),
      Text(title, style: TxtStyleMobile.txt_XSmall)
    ]);
  }
}
