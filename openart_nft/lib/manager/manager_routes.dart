import 'package:flutter/material.dart';

import '../screen/about_screen/about_screen.dart';
import '../screen/detail_auction/detail_auction.dart';
import '../screen/detail_currentbid/detail_currentbid.dart';
import '../screen/detail_sold/detail_sold.dart';
import '../screen/discover_creator/discover_creator.dart';
import '../screen/faq_screen/faq_screen.dart';
import '../screen/home_screen/home_screen.dart';
import '../screen/join_community/join_community.dart';
import '../screen/profile_edit/profile_edit.dart';
import '../screen/profile_empty/profile_empty.dart';
import '../screen/user_profile/user_profile.dart';

class ManagerRoutes {
  ManagerRoutes._();

  static String detail_sold = '/detail_screen';
  static String detail_auction = '/detail_auction';
  static String discover_creator = '/discover_creator';
  static String about_screen = '/about_screen';
  static String detail_currentbid = '/detail_currentbid';
  static String faq_screen = '/faq_screen';
  static String home_screen = '/home_screen';
  static String join_community = '/join_community';
  static String profile_edit = '/profile_edit';
  static String profile_empty = '/profile_empty';
  static String user_profile = '/user_profile';

  // MANAGERS
  static Map<String, Widget Function(BuildContext)> manager = {
    detail_sold: (context) => DetailSoldScreen(),
    detail_auction: (context) => DetailAuctionScreen(),
    discover_creator: (context) => DiscoverCreatorScreen(),
    about_screen: (context) => AboutScreen(),
    detail_currentbid: (context) => DetailCurrentBidScreen(),
    faq_screen: (context) => FAQScreen(),
    home_screen: (context) => HomeScreen(),
    join_community: (context) => JoinCommunityScreen(),
    profile_edit: (context) => ProfileEditScreen(),
    profile_empty: (context) => ProfileEmptyScreen(),
    user_profile: (context) => UserProfileScreen(),
  };
}
