import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/profile%20/widget/custom_icon_bottom_sheet.dart';
import 'package:pro_sphere/screens/widget/custom_button.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';

import 'account_management_item_widget.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
        color: AppColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomIconBottomSheet(),
          SizedBox(height: 20.h),
          Text(
            "Тех. поддержка",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 20.sp,
                ),
          ),
          SizedBox(height: 10.h),
          Text(
            "При возникших трудностях или непонятных ситуациях, Вы можете обратиться к нам.",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 17.sp,
                  color: AppColors.c141414.withOpacity(.4),
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          CustomButton(
            buttonColor: AppColors.c141414,
            title: 'Написать в телеграм',
            onTap: () {},
            titleColor: AppColors.white,
          ),
          SizedBox(height: 10.h),
          CustomButton(
            buttonColor: AppColors.c00C7BE,
            title: 'Позвонить',
            onTap: () {},
            titleColor: AppColors.white,
          ),
          SizedBox(height: 14.h),
        ],
      ),
    );
  }
}
