import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/bloc/currency/currency_bloc.dart';
import 'package:pro_sphere/bloc/search_result/search_result_bloc.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/route/routes.dart';
import 'package:pro_sphere/utils/style/themes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return AdaptiveTheme(
              light: AppThemes.lightTheme,
              dark: AppThemes.darkTheme,
              initial: AdaptiveThemeMode.light,
              builder: (theme, darkTheme) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (_) => CurrencyBloc(),
                    ),
                    BlocProvider(
                      create: (_) => SearchResultBloc(),
                    ),
                  ],
                  child: MaterialApp(
                    // navigatorKey: navigatorKey,
                    theme: theme,
                    darkTheme: AppThemes.lightTheme,
                    debugShowCheckedModeBanner: false,
                    initialRoute: RouteList.initial,
                    onGenerateRoute: (RouteSettings settings) {
                      final routes = Routes.getRoutes(settings);
                      final WidgetBuilder builder = routes[settings.name]!;
                      return MaterialPageRoute(
                        builder: builder,
                        settings: settings,
                      );
                    },
                  ),
                );
              });
        });
  }
}
