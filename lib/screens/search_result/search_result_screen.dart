import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/search_result/widget/all_result_widget.dart';
import 'package:pro_sphere/screens/search_result/widget/custom_bottom_navigation_widget.dart';
import 'package:pro_sphere/screens/search_result/widget/all_result_item_widget.dart';
import 'package:pro_sphere/screens/search_result/widget/images_result_widget.dart';
import 'package:pro_sphere/screens/search_result/widget/news_result_widget.dart';
import 'package:pro_sphere/screens/search_result/widget/video_result_widget.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

import 'widget/item_search_widget.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  TextEditingController textEditingController = TextEditingController();
  List<String> category = ["Все", "Картинки", "Видео", "Новости"];
  int categoryItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    color: AppColors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < category.length; i++)
                            ItemSearchWidget(
                              isCheck: i == categoryItem,
                              onTap: () {
                                setState(() {
                                  categoryItem = i;
                                });
                              },
                              title: category[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: AppColors.backgroundColor,
                      child: categoryItem == 0
                          ? const AllResultWidget()
                          : categoryItem == 1
                              ? const ImagesResultWidget()
                              : categoryItem == 2
                                  ? const VideoResultWidget()
                                  : const NewsResultWidget(),
                    ),
                  ),
                ],
              ),
            ),
            CustomBottomNavigationWidget(
                arrowBackTap: () {}, arrowEnterTap: () {}, homeTap: () {}, bookTap: () {}, oldEnterTap: () {}, reload: () {}, textEditingController: textEditingController, onValueChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
