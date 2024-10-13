import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SearchWidget extends StatelessWidget {
  final VoidCallback onTap;

  const SearchWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r), color: AppColors.white),
      child: InkWell(
        borderRadius: BorderRadius.circular(100.r),
        onTap:onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.h,
              backgroundColor: AppColors.c141414,
              child: const Icon(
                Icons.search,
                color: AppColors.white,
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              "Поиск",
              style: Theme
                  .of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(
                color: AppColors.c050505.withOpacity(0.3),
                fontSize: 16.sp,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              AppSvg.phMicrophone,
              colorFilter: const ColorFilter.mode(
                AppColors.c141414,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(width: 20.w),
          ],
        ),
      ),
    );
  }
}
