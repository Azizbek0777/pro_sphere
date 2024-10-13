import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class VideoResultItemWidget extends StatelessWidget {
  final VoidCallback onTapMenu;
  final VoidCallback onTap;
  final String title;
  final String link;
  final String descTitle;
  final String description;

  const VideoResultItemWidget({
    super.key,
    required this.onTapMenu,
    required this.onTap,
    required this.title,
    required this.link,
    required this.descTitle,
    required this.description,
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
                children: [
                  CircleAvatar(
                    radius: 17.r,
                    backgroundColor: AppColors.cF8F8F8,
                    child: SvgPicture.asset(AppSvg.google),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp),
                        ),
                        Text(
                          link,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 13.sp,
                            color: AppColors.c141414.withOpacity(0.4),
                          ),
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  InkWell(
                    onTap: onTapMenu,
                    borderRadius: BorderRadius.circular(100.r),
                    child: CircleAvatar(
                      radius: 17.r,
                      backgroundColor: AppColors.cF8F8F8,
                      child: SvgPicture.asset(AppSvg.menu),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Divider(
                color: AppColors.c141414.withOpacity(0.3),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 177.w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          AppSvg.google,
                          width: 90.w,
                        ),
                        Container(
                            height: 120.h,
                            width: 177.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.r),
                              color: AppColors.c141414.withOpacity(0.4),
                            )),
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 40.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: AppColors.c141414.withOpacity(0.4),
                            ),
                            child: Text(
                              "0:46",
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 11.sp,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                        InkWell(onTap: () {}, child: SvgPicture.asset(AppSvg.play))
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SizedBox(
                    height: 120.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 18.sp,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          "1 месяц назад",
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 13.sp,
                            color: AppColors.c141414.withOpacity(0.4),
                          ),
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
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
