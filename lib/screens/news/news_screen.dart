import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/news/widget/news_item_widget.dart';

import '../../utils/style/colors.dart';
import '../widget/custom_app_bar.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
        context: context,
        onTapCloseOrAccount: () {},
        title: 'Новости',
        isAccountIcon: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            for (int i = 0; i < 10; i++)
              const NewsItemWidget(
                domain: 'Samsung.com',
                eyes: 10,
                desc: '''Samsung начала массовое производство самого быстрого SSD
на сегодняшний день со скоростью 2000 ''',
              ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
