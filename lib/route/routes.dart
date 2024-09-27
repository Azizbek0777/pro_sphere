import 'package:flutter/cupertino.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/search/search_screen.dart';

import '../screens/main/main_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
        RouteList.initial: (context) => const SplashScreen(),
        RouteList.main: (context) => const MainScreen(),
        RouteList.search: (context) => const SearchScreen(),
      };
}
