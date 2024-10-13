import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/profile%20/widget/account_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/info_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/profile_button_item_widget.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/style/colors.dart';
import '../widget/custom_app_bar.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List<String> profileList = [
    "Политика конфиденциальности",
    "Лицензионное соглашение",
    "Правила рекомендаций",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 22.r,
              backgroundColor: AppColors.backgroundColor,
              child: SizedBox(
                height: 15.h,
                child: SvgPicture.asset(
                  AppSvg.arrow,
                  colorFilter: const ColorFilter.mode(
                    AppColors.c141414,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "О приложении",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 20.sp),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const InfoWidget(
                name: "Sfere",
                version: "Версия 24.0.2",
                middleName: 'Digital Eco System',
              ),
              SizedBox(height: 10.h),
              for (int i = 0; i < profileList.length; i++)
                ProfileButtonItemWidget(
                  onTap: () {},
                  title: profileList[i],
                  appSvg: AppSvg.sms,
                )
            ],
          ),
        ),
      ),
    );
  }
}
