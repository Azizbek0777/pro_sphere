import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/bloc/currency/currency_bloc.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/home/widget/exchange_rate_widget.dart';
import 'package:pro_sphere/screens/home/widget/weathe_widget.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<CurrencyBloc>().add(GetCurrencyEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 10.h,
              child: CircleAvatar(
                backgroundColor: AppColors.backgroundColor,
                radius: 24.r,
                child: SvgPicture.asset(AppSvg.account),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppSvg.logoPro,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  SearchAnchor(
                    dividerColor: AppColors.c000000,
                    viewBackgroundColor: AppColors.cF5F6F7,
                    viewTrailing: [
                      InkWell(
                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {},
                        child: SvgPicture.asset("assets/svg/ph_microphone.svg"),
                      ),
                      SizedBox(width: 16.w),
                    ],
                    viewLeading: CircleAvatar(
                      backgroundColor: AppColors.c5FE0D8,
                      radius: 24.w,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/svg/arrow.svg"),
                      ),
                    ),
                    builder: (BuildContext context, SearchController controller) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        height: 52.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(color: AppColors.c5FE0D8),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RouteList.search);
                            // controller.openView();
                          },
                          child: Row(
                            children: [
                              Text(
                                "Поиск",
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColors.c050505.withOpacity(0.4)),
                              ),
                              const Spacer(),
                              SvgPicture.asset(AppSvg.phMicrophone)
                            ],
                          ),
                        ),
                      );
                    },
                    suggestionsBuilder: (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(10, (int index) {
                        final String item = "item $index";
                        return ListTile(
                          title: Text(item),
                        );
                      });
                    },
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        const WeatheWidget(),
                        SizedBox(width: 10.w),
                        const ExchangeRateWidget(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
