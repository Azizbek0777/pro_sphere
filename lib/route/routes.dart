import 'package:flutter/cupertino.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/profile%20/info_screen.dart';
import 'package:pro_sphere/screens/profile%20/profile_screen.dart';
import 'package:pro_sphere/screens/profile%20/settings_screen.dart';
import 'package:pro_sphere/screens/search/search_screen.dart';
import 'package:pro_sphere/screens/search_result/search_result_screen.dart';

import '../screens/main/main_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
        RouteList.initial: (context) => const SplashScreen(),
        RouteList.main: (context) => const MainScreen(),
        RouteList.search: (context) => const SearchScreen(),
        RouteList.searchResult: (context) => const SearchResultScreen(),
        RouteList.profile: (context) => const ProfileScreen(),
        RouteList.settings: (context) => const SettingsScreen(),
        RouteList.info: (context) => const InfoScreen(),
      };
}
