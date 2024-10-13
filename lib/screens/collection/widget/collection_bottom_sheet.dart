import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/widget/custom_button.dart';
import 'package:pro_sphere/utils/style/colors.dart';

class CollectionBottomSheet extends StatelessWidget {
  const CollectionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(14.r),
            topLeft: Radius.circular(14.r),
          ),
          color: AppColors.white),
      child: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
          Text(
            "Cheeff",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.cB10700,
                  fontSize: 25.sp,
                ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Сотни ресторанов и отдельные Шефы в одном приложении — выбирайте, заказывайте и получайте горячие блюда на дом. Легко, быстро и удобно!",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.c141414.withOpacity(0.4),
                  fontSize: 17.sp,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          CustomButton(
            buttonColor: AppColors.c141414,
            title: "Посетить сайт",
            onTap: () {
              Navigator.pushNamed(context, RouteList.searchResult);
            },
            titleColor: AppColors.white,
          ),
          SizedBox(height: 10.h),
          CustomButton(
            buttonColor: AppColors.c00C7BE,
            title: "Скачать приложение",
            onTap: () {
            },
            titleColor: AppColors.white,
          )
        ],
      ),
    );
  }
}
