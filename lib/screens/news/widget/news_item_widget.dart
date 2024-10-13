import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/ui_needs/app_svg.dart';

class NewsItemWidget extends StatelessWidget {
  final String domain;
  final String desc;
  final int eyes;

  const NewsItemWidget({
    super.key,
    required this.domain,
    required this.desc,
    required this.eyes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h, right: 16.w, left: 16.w),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppPng.example,
            height: 200.h,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                Text(
                  desc,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColors.c000000,
                        fontSize: 20.sp,
                      ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  color: AppColors.c141414.withOpacity(0.15),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Источник",
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  fontSize: 13.sp,
                                  color: AppColors.c141414.withOpacity(0.4),
                                ),
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            domain,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 34.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(
                          color: AppColors.cF6F6F6,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 17.h,
                            backgroundColor: AppColors.cF6F6F6,
                            child: SvgPicture.asset(AppSvg.eye),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            eyes.toString(),
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  fontSize: 13.sp,
                                ),
                          ),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    CircleAvatar(
                      radius: 17.h,
                      backgroundColor: AppColors.cF6F6F6,
                      child: SvgPicture.asset(AppSvg.share),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
