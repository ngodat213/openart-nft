import 'package:flutter/material.dart';

import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/avatar_profile.dart';
import 'widget/detail_profile_user.dart';
import 'widget/tabbar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                margin: EdgeInsets.all(Dimens.PADDING_16),
                size: size,
              ),
              SizedBox(height: 26),
              AvatarProfileWidget(
                height: size.height,
                width: size.width,
                imageUrl: AppImage.avatarImage,
                wallpeperUrl: AppImage.wallpaper,
                name: "Gift Habeshaw",
                uid: '52fs5ge5g45sov45a',
              ),
              SizedBox(height: Dimens.HEIGHT_24),
              DetailProfileUserWidget(
                size: size,
                following: 150,
                follower: 2024,
                title:
                    'Trevor Jackson is a multi-disciplinary artist exploring analog + digital realms since 1988. Collaborators inc Apple, BMW, Comme Des Garçons, ICA, NTS, Sonos,  Stone Island, Tate Modern + Warp.',
                linkSocial: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      AppImage.icon_link,
                      width: Dimens.SIZE_19,
                    ),
                    Text('@openart.design')
                  ],
                ),
              ),
              TabbarWidget(size: size, tabController: _tabController),
              FooterWidget(size: size, top: Dimens.HEIGHT_84)
            ],
          ),
        ),
      ),
    );
  }
}
