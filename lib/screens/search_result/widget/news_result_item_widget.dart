import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class NewsResultItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String date;
  final String title;
  final String company;
  final String domain;
  final int chatCount;
  final int eyeCount;

  const NewsResultItemWidget({
    super.key,
    required this.onTap,
    required this.date,
    required this.title,
    required this.company,
    required this.domain,
    required this.chatCount,
    required this.eyeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      color: AppColors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 13.sp,
                                color: AppColors.c141414.withOpacity(0.4),
                              ),
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 17.sp),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 120.w,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(14.r),
                      image: const DecorationImage(
                        image: AssetImage(AppPng.example),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Divider(
                color: AppColors.c141414.withOpacity(0.3),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          company,
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
                          child: SvgPicture.asset(AppSvg.chat),
                        ),
                        SizedBox(width: 10.w,)
                        ,
                        Text(
                          "$chatCount",
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 13.sp,
                              ),
                        ),
                        SizedBox(width: 10.w,)
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
                        SizedBox(width: 10.w,)
                        ,
                        Text(
                          "$eyeCount",
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 13.sp,
                              ),
                        ),
                        SizedBox(width: 10.w,)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
