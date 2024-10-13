import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

AppBar customAppBar({
  required BuildContext context,
  required VoidCallback onTapCloseOrAccount,
  required String title,
  required bool isAccountIcon,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.white,
    automaticallyImplyLeading: false,
    centerTitle: false,
    title: Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 36.sp),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 8.w),
        child: GestureDetector(
          onTap: onTapCloseOrAccount,
          child: CircleAvatar(
            radius: 22.r,
            backgroundColor: AppColors.cF8F8F8,
            child: isAccountIcon ? SvgPicture.asset(AppSvg.account) : SvgPicture.asset(AppSvg.close),
          ),
        ),
      )
    ],
  );
}
