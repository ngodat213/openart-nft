import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/btn_border_gradient.dart';
import '../../widget/btn_raised_gradient.dart';
import '../../widget/divider.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/multi_line_field.dart';
import '../profile_edit/widget/text_form_field.dart';
import 'widget/btn_upload.dart';
import 'widget/create_collection.dart';
import 'widget/offer_collection.dart';
import 'widget/upload_artwork.dart';

class UploadArtworkScreen extends StatefulWidget {
  const UploadArtworkScreen({super.key});

  @override
  State<UploadArtworkScreen> createState() => _UploadArtworkScreenState();
}

class _UploadArtworkScreenState extends State<UploadArtworkScreen> {
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
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                  bottom: Dimens.PADDING_20,
                ),
                child: Text('Upload Artwork', style: TxtStyleMobile.h3b),
              ),
              UploadArtworkWidget(size: size),
              CheckboxListTile(
                value: false,
                onChanged: (val) {},
                activeColor: AppColor.activity,
                title: Text('Multi-file'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 4; ++i) BtnUploadWidget(),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  top: Dimens.PADDING_16,
                  bottom: Dimens.PADDING_10,
                ),
                child: Text('Information', style: TxtStyleMobile.link_XSmall),
              ),
              TextFormFieldWidget(
                title: 'Item name',
                color: AppColor.offWhite,
                border: Border.all(width: 1, color: AppColor.placeholder),
              ),
              SizedBox(height: Dimens.HEIGHT_16),
              TextFormFieldWidget(
                title: 'Tag',
                color: AppColor.inputBg,
                boxShadow: [AppColor.boxShadow],
              ),
              MultiLineFieldWidget(size: size, title: 'Description'),
              CheckboxListTile(
                value: true,
                onChanged: (val) {},
                activeColor: AppColor.activity,
                title: Text('Sale this item'),
                subtitle: Text('You’ll receive bids on this item'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                onChanged: (val) {},
                activeColor: AppColor.activity,
                title: Text('Instant sale price'),
                subtitle: Text(
                    'Enter the price for which the item will be instantly sold'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                onChanged: (val) {},
                activeColor: AppColor.activity,
                title: Text('Unlock once purchased'),
                subtitle: Text(
                    'Content will be unlocked after successful transaction'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                onChanged: (val) {},
                activeColor: AppColor.activity,
                title: Text('Add to collection'),
                subtitle:
                    Text('Choose an exiting collection or create a new one'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CreateCollectionWidget(size: size),
                  OfferCollectionWidget(size: size)
                ],
              ),
              SizedBox(height: Dimens.HEIGHT_46),
              BorderGradinetButton(
                onPressed: () {},
                size: size,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: Dimens.PADDING_10),
                      child: Image.asset(AppImage.icon_view),
                    ),
                    Text('Preview', style: TxtStyleMobile.link_Large2),
                  ],
                ),
              ),
              SizedBox(height: Dimens.HEIGHT_12),
              RaisedGradientButton(
                size: size,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: Dimens.PADDING_10),
                      child: Image.asset(AppImage.icon_export),
                    ),
                    Text('Upload', style: TxtStyleMobile.link_Large1),
                  ],
                ),
              ),
              SizedBox(height: Dimens.HEIGHT_40),
              DividerWidget(color: AppColor.line, width: size.width - 48),
              FooterWidget(size: size, top: Dimens.HEIGHT_90)
            ],
          ),
        ),
      ),
    );
  }
}
