import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/bloc/currency/currency_bloc.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/home/widget/exchange_rate_widget.dart';
import 'package:pro_sphere/screens/home/widget/search_widget.dart';
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
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: 24.r,
                  child: SvgPicture.asset(
                    AppSvg.account,
                    colorFilter: const ColorFilter.mode(AppColors.c141414, BlendMode.srcIn),
                  ),
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SFERA", style: Theme.of(context).textTheme.headlineMedium),
                    SizedBox(
                      height: 50.h,
                    ),
                    SearchWidget(onTap: (){
                      Navigator.pushNamed(context, RouteList.search);
                    },),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const WeatheWidget(),
                        SizedBox(width: 10.w),
                        const ExchangeRateWidget(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
