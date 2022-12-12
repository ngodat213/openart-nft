import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class MultiLineFieldWidget extends StatelessWidget {
  const MultiLineFieldWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 4,
      margin: EdgeInsets.only(
        left: Dimens.PADDING_19,
        top: Dimens.PADDING_16,
        right: Dimens.PADDING_19,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(color: AppColor.inputBg),
      child: TextField(
        minLines: 1,
        maxLines: 7,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintStyle: TxtStyleMobile.txt_Medium(),
          hintText: 'Enter your bio here',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
