import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/profile%20/widget/profile_button_item_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/support_widget.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';

import 'account_management_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  List<String> svgList = [
    AppSvg.account,
    AppSvg.accountSetting,
    AppSvg.sms,
    AppSvg.setting,
    AppSvg.support,
    AppSvg.info,
  ];

  List<String> profileList = [
    "Персональные данные",
    "Управление аккаунтами",
    "Почта",
    "Настройки",
    "Тех. поддержка",
    "О приложении",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < svgList.length; i++)
          ProfileButtonItemWidget(
            onTap: () {
              if (i == 0) {
                Navigator.pushNamed(context, RouteList.searchResult);
              } else if (i == 1) {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: AppColors.transparent,
                  builder: (context) {
                    return const AccountManagementWidget();
                  },
                );
              } else if (i == 3) {
                Navigator.pushNamed(context, RouteList.settings);
              } else if (i == 4) {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: AppColors.transparent,
                  builder: (context) {
                    return const SupportWidget();
                  },
                );
              } else if (i == 5) {
                Navigator.pushNamed(context, RouteList.info);
              }
            },
            title: profileList[i],
            appSvg: svgList[i],
          )
      ],
    );
  }
}
