import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/profile%20/widget/account_widget.dart';
import 'package:pro_sphere/screens/profile%20/widget/profile_widget.dart';
import 'package:pro_sphere/screens/widget/custom_app_bar.dart';
import 'package:pro_sphere/utils/style/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
        context: context,
        onTapCloseOrAccount: () {},
        title: "Профиль",
        isAccountIcon: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const AccountWidget(
                name: "Azizbek Narzullayev",
                phoneNumber: "+998 90 131 33 90",
              ),
              SizedBox(height: 10.h),
              const ProfileWidget()
            ],
          ),
        ),
      ),
    );
  }
}
