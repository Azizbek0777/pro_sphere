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
        height: 78.h,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.c5FE0D8,
        ),
        child: BlocConsumer<CurrencyBloc, CurrencyState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if(state is CurrencyLoaded){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.currencyResponse?.response?[0].date??"",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.cFEFEFE,
                      fontSize: 12.sp,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "USD",
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.cFEFEFE.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SvgPicture.asset(AppSvg.growth),
                            ],
                          ),
                          Text(
                            state.currencyResponse?.response?[0].rate??"",
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: AppColors.cFEFEFE,
                              fontSize: 16.sp,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "EUR",
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.cFEFEFE.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SvgPicture.asset(AppSvg.decrease),
                            ],
                          ),
                          Text(
                            state.currencyResponse?.response?[1].rate??"",
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: AppColors.cFEFEFE,
                              fontSize: 16.sp,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              );

            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "12.04.2024",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppColors.cFEFEFE,
                        fontSize: 12.sp,
                      ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "USD",
                              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                    color: AppColors.cFEFEFE.withOpacity(0.6),
                                  ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            SvgPicture.asset(AppSvg.growth),
                          ],
                        ),
                        Text(
                          "12 120.15",
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                color: AppColors.cFEFEFE,
                                fontSize: 16.sp,
                              ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "EUR",
                              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                    color: AppColors.cFEFEFE.withOpacity(0.6),
                                  ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            SvgPicture.asset(AppSvg.decrease),
                          ],
                        ),
                        Text(
                          "12 120.15",
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                color: AppColors.cFEFEFE,
                                fontSize: 16.sp,
                              ),
                        )
                      ],
                    ),
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
