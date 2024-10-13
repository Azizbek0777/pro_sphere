import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/search_result/widget/news_result_item_widget.dart';

import '../../../utils/style/colors.dart';
import 'all_result_item_widget.dart';

class NewsResultWidget extends StatelessWidget {
  const NewsResultWidget({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 20.h,
            ),
            for (int i = 0; i < 10; i++)
              NewsResultItemWidget(
                onTap: () {},
                title:
                    "Новую God of War Ragnarok слили на торренты, но игра не запускается на мобильной GeForce RTX 3050",
                date: 'Сегодня, 14:52', company: 'Источник', domain: 'Unian.net', chatCount: 50, eyeCount: 10000,
                
              )
          ],
        ),
      ),
    );
  }
}
