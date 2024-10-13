import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/bloc/search_result/search_result_bloc.dart';
import 'package:pro_sphere/bloc/search_result/search_result_bloc.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/search/widget/popular_queries_widget.dart';
import 'package:pro_sphere/screens/search/widget/recent_requests_widget.dart';
import 'package:pro_sphere/screens/search/widget/sfere_offer_widget.dart';
import 'package:pro_sphere/screens/widget/custom_app_bar.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchResultBloc, SearchResultState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: customAppBar(
            context: context,
            onTapCloseOrAccount: () {
              Navigator.pop(context);
            },
            title: 'Поиск',
            isAccountIcon: false,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecentRequestsWidget(
                    onTapClearAll: () {},
                    title: "Недавние запросы",
                  ),
                  SizedBox(height: 15.h),
                  const PopularQueriesWidget(
                    title: "Популярные запросы",
                  ),
                  SizedBox(height: 15.h),
                  const SfereOfferWidget(
                    title: "Популярные запросы",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
