import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/main_settings_item_widget.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';

class InterfaceSettingsWidget extends StatefulWidget {
  const InterfaceSettingsWidget({super.key});

  @override
  State<InterfaceSettingsWidget> createState() => _MainSettingsWidgetState();
}

class _MainSettingsWidgetState extends State<InterfaceSettingsWidget> {
  List svgList = [
    AppSvg.themeSettings,
    AppSvg.shrift,
  ];
  List titleList = [
    "Оформление",
    "Размер шрифта",
  ];
  List subtitleList = [
    "Как в системе",
    "100%",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Интерфейс",
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
