import 'package:flutter/material.dart';
import 'package:openart_nft/widget/header.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/avatar_profile.dart';
import '../../widget/btn_raised_gradient.dart';
import '../../widget/divider.dart';
import '../../widget/footer.dart';
import '../home_screen/widget/btn_outline.dart';
import 'widget/btn_link.dart';
import '../../widget/multi_line_field.dart';
import 'widget/text_form_field.dart';
import 'widget/upload_image.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

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
              AvatarProfileWidget(
                height: size.height,
                width: size.width,
                imageUrl: AppImage.avatarImage,
                wallpeperUrl: AppImage.wallpaper,
                name: "Gift Habeshaw",
                uid: '52fs5ge5g45sov45a',
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_38,
                ),
                child:
                    Text('Enter your details', style: TxtStyleMobile.txt_Large),
              ),
              TextFormFieldWidget(title: 'Name', top: Dimens.PADDING_16),
              TextFormFieldWidget(title: 'User Name', top: Dimens.PADDING_13),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
                child:
                    Text('Enter your email', style: TxtStyleMobile.txt_Large),
              ),
              TextFormFieldWidget(
                title: 'Gmail',
                top: Dimens.PADDING_16,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_40,
                  right: Dimens.PADDING_20,
                ),
                child: Text(
                  'Add your email address to receive notifications about your activity on Foundation. This will not be shown on your profile.',
                  style: TxtStyleMobile.txt_Small2,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
                child: Text('Enter your bio', style: TxtStyleMobile.txt_Large),
              ),
              MultiLineFieldWidget(
                size: size,
                title: 'Enter your bio here',
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
                child: Text('Upload a profile image.',
                    style: TxtStyleMobile.txt_Large),
              ),
              UploadImageWidget(size: size),
              Container(
                  margin: EdgeInsets.only(left: Dimens.PADDING_16),
                  child: Text('Verify your profile',
                      style: TxtStyleMobile.txt_Large)),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_20,
                ),
                child: Text(
                  'Show the Foundation community that your profile is authentic.',
                  style: TxtStyleMobile.txt_Small2,
                ),
              ),
              BtnOutlineWidget(
                onPressed: () {},
                color: AppColor.placeholder,
                borderRadius: Dimens.RADIUS_8,
                height: Dimens.HEIGHT_56,
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_19,
                  right: Dimens.PADDING_16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: Dimens.PADDING_13),
                      child: Image.asset(AppImage.icon_twitter),
                    ),
                    Text('Verify via Twitter',
                        style: TxtStyleMobile.link_Large2)
                  ],
                ),
              ),
              BtnOutlineWidget(
                onPressed: () {},
                color: AppColor.placeholder,
                borderRadius: Dimens.RADIUS_8,
                height: Dimens.HEIGHT_56,
                margin: EdgeInsets.fromLTRB(
                  Dimens.PADDING_16,
                  Dimens.PADDING_10,
                  Dimens.PADDING_16,
                  Dimens.PADDING_40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: Dimens.PADDING_13),
                      child: Image.asset(AppImage.icon_instagram),
                    ),
                    Text('Verify via Instagram',
                        style: TxtStyleMobile.link_Large2)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimens.PADDING_16),
                child: Text(
                  'Add links to your social\nmedia profiles.',
                  style: TxtStyleMobile.txt_Large,
                ),
              ),
              SizedBox(height: Dimens.PADDING_20),
              BtnLinkWidget(icon: AppImage.icon_link, title: 'Website'),
              SizedBox(height: Dimens.PADDING_16),
              BtnLinkWidget(icon: AppImage.icon_discord, title: 'Discord'),
              SizedBox(height: Dimens.PADDING_16),
              BtnLinkWidget(icon: AppImage.icon_instagram, title: 'Instagram'),
              SizedBox(height: Dimens.PADDING_16),
              BtnLinkWidget(
                  icon: AppImage.icon_youtube, title: 'Youtube channel'),
              SizedBox(height: Dimens.PADDING_16),
              BtnLinkWidget(icon: AppImage.icon_facebook, title: 'Facebook'),
              SizedBox(height: Dimens.PADDING_16),
              BtnLinkWidget(icon: AppImage.icon_tiktok, title: 'Tiktok'),
              SizedBox(height: Dimens.PADDING_40),
              RaisedGradientButton(
                size: size,
                child: Text(
                  'Save',
                  style: TxtStyleMobile.txt_Medium(color: AppColor.offWhite),
                ),
                width: size.width - 32,
                borderRadius: Dimens.RADIUS_8,
                height: Dimens.HEIGHT_56,
                onPressed: () {},
              ),
              DividerWidget(
                color: AppColor.line,
                width: size.width - 32,
                margin: EdgeInsets.only(top: Dimens.PADDING_30),
              ),
              FooterWidget(size: size, top: Dimens.HEIGHT_90)
            ],
          ),
        ),
      ),
    );
  }
}
