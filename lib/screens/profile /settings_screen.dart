import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/actions_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/confidentiality_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/interface_settings_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/main_settings_widget.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/style/colors.dart';
import '../../utils/ui_needs/app_svg.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Настройки",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 20.sp),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              const MainSettingsWidget(),
              SizedBox(height: 10.h),
              const InterfaceSettingsWidget(),
              SizedBox(height: 10.h),
              const ConfidentialityWidget(),
              SizedBox(height: 10.h),
              const ActionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
