import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/bloc/currency/currency_bloc.dart';
import 'package:pro_sphere/bloc/currency/currency_bloc.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../utils/style/colors.dart';

class ExchangeRateWidget extends StatelessWidget {
  const ExchangeRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.white,
        ),
        child: BlocConsumer<CurrencyBloc, CurrencyState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is CurrencyLoaded) {
              return Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundColor: AppColors.cF8F8F8,
                        child: SvgPicture.asset(AppSvg.location),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ташкент",
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp),
                          ),
                          Text(
                            "24 сентября",
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.c141414.withOpacity(0.4),
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Тепло",
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp, color: AppColors.c141414.withOpacity(0.4)),
                          ),
                          Text(
                            "+25°",
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 40.sp, color: AppColors.c141414, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              );
            }
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.cF8F8F8,
                      child: SvgPicture.asset(AppSvg.dollar),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "USD",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 15.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "-8.28",
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp, color: AppColors.cFF0303),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "12,450",
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    fontSize: 40.sp,
                                    color: AppColors.c141414,
                                    fontWeight: FontWeight.w300,
                                  ),
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              ".58",
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    fontSize: 17.sp,
                                    color: AppColors.c141414.withOpacity(0.4),
                                    fontWeight: FontWeight.w300,
                                  ),
                              textAlign: TextAlign.end,

                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
