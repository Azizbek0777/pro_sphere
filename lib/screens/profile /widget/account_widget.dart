import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';

// import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg.dart';

class AccountWidget extends StatelessWidget {
  final String name;
  final String phoneNumber;

  const AccountWidget({
    super.key,
    required this.phoneNumber,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 130.w,
          width: 130.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: AppColors.white,
          ),
          child: Container(
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              image: const DecorationImage(
                image: AssetImage(
                  AppPng.image,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.w),
            height: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppSvg.sfera),
                    SizedBox(width: 5.w),
                    Text(
                      "Pro ID",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: AppColors.c141414.withOpacity(0.4),
                            fontSize: 13.sp,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 18.sp),
                ),
                Text(
                  phoneNumber,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp, color: AppColors.c141414.withOpacity(0.3)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
