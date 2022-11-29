import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';

class TextLinkWidget extends StatelessWidget {
  const TextLinkWidget({
    super.key,
    required this.external,
    required this.darkmode,
  });
  final bool external;
  final bool darkmode;
  @override
  Widget build(BuildContext context) {
    return external
        ? Row(children: [
            Image.asset(AppImage.icon_AlertInfo),
            RichText(
                text: TextSpan(
              style: TextStyle(
                color: AppColor.body,
                fontSize: Dimens.FONT_SIZE_DEFAULT,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              text: 'External Link',
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  print('link');
                },
            ))
          ])
        : RichText(
            text: TextSpan(
            style: TextStyle(
              color: AppColor.body,
              fontSize: Dimens.FONT_SIZE_DEFAULT,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
            ),
            text: 'External Link',
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                print('link');
              },
          ));
  }
}
