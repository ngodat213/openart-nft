import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/txt_style.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    String valueChoose = '0';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                margin: EdgeInsets.all(Dimens.PADDING_16),
                size: size,
              ),
              Text('Frequently asked questions',
                  style: TxtStyleMobile.link_Large2),
              SizedBox(height: 12),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_20,
                  right: Dimens.PADDING_20,
                ),
                child: Text(
                  'Join our community now to get free updates and also alot of freebies are waiting for you or Contact Support',
                  textAlign: TextAlign.center,
                  style: TxtStyleMobile.txt_Medium(),
                ),
              ),
              SizedBox(height: 18),
              DropdownWidget(valueChoose: valueChoose, title: 'General'),
              SizedBox(height: 20),
              DropdownWidget(
                  valueChoose: valueChoose, title: 'How does it work'),
              SizedBox(height: 20),
              DropdownWidget(valueChoose: valueChoose, title: 'How to start'),
              SizedBox(height: 20),
              DropdownWidget(valueChoose: valueChoose, title: 'How to payment'),
              SizedBox(height: 20),
              DropdownWidget(valueChoose: valueChoose, title: 'How to bid'),
              FooterWidget(size: size, top: Dimens.HEIGHT_100)
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
    required this.valueChoose,
    required this.title,
  }) : super(key: key);

  final String valueChoose;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
      ),
      padding: EdgeInsets.only(
        left: Dimens.PADDING_16,
        top: Dimens.PADDING_13,
        right: Dimens.PADDING_16,
        bottom: Dimens.PADDING_10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        color: AppColor.inputBg,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(title, style: TxtStyleMobile.txt_Medium()),
          isExpanded: true,
          value: valueChoose,
          items: [
            DropdownMenuItem(value: '0', child: Text(title)),
            DropdownMenuItem(value: '1', child: Text('text1')),
            DropdownMenuItem(value: '2', child: Text('text2')),
            DropdownMenuItem(value: '3', child: Text('text3')),
            DropdownMenuItem(value: '4', child: Text('text4')),
          ],
          onChanged: (data) {},
        ),
      ),
    );
  }
}
