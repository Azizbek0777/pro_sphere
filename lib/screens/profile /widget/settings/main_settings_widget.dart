import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/main_settings_item_widget.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';

class MainSettingsWidget extends StatefulWidget {
  const MainSettingsWidget({super.key});

  @override
  State<MainSettingsWidget> createState() => _MainSettingsWidgetState();
}

class _MainSettingsWidgetState extends State<MainSettingsWidget> {
  List svgList = [
    AppSvg.reload1,
    AppSvg.search,
    AppSvg.locationWhite,
    AppSvg.cellular,
  ];
  List titleList = [
    "Синхронизация",
    "Страна поиска",
    "Город",
    "Режим фильтрации",
  ];
  List subtitleList = [
    "Включена",
    "Узбекистан",
    "Ташкент",
    "Умеренный",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Основные",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 20.sp,
              ),
        ),
        SizedBox(height: 10.h),
        for (int i = 0; i < svgList.length; i++)
          MainSettingsItemWidget(
            title: titleList[i],
            onTap: () {},
            appSvg: svgList[i],
            subTitle: subtitleList[i],
          ),
      ],
    );
  }
}
