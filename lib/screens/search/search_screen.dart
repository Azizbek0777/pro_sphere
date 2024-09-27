import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/bloc/search_result/search_result_bloc.dart';
import 'package:pro_sphere/bloc/search_result/search_result_bloc.dart';
import 'package:pro_sphere/main.dart';
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
          backgroundColor: AppColors.cF5F6F7,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  // SearchAnchor(
                  //   viewTrailing: [
                  //     InkWell(
                  //       borderRadius: BorderRadius.circular(100.r),
                  //       onTap: () {},
                  //       child: SvgPicture.asset("assets/svg/ph_microphone.svg"),
                  //     ),
                  //     SizedBox(width: 16.w),
                  //   ],
                  //   viewLeading: CircleAvatar(
                  //     backgroundColor: AppColors.c5FE0D8,
                  //     radius: 24.w,
                  //     child: InkWell(
                  //       borderRadius: BorderRadius.circular(100.r),
                  //       onTap: () {
                  //         Navigator.pop(context);
                  //       },
                  //       child: SvgPicture.asset("assets/svg/arrow.svg"),
                  //     ),
                  //   ),
                  //   builder: (BuildContext context, SearchController controller) {
                  //     return SearchBar(
                  //       onTap: () {
                  //         // controller.openView();
                  //       },
                  //       onChanged: (value) {
                  //         if (value.length > 3) {
                  //           context.read<SearchResultBloc>().add(SendSearchResultEvent(searchText: value));
                  //         }
                  //       },
                  //       controller: controller,
                  //       leading: CircleAvatar(
                  //         backgroundColor: AppColors.c5FE0D8,
                  //         radius: 24.w,
                  //         child: InkWell(
                  //           borderRadius: BorderRadius.circular(100.r),
                  //           onTap: () {
                  //             Navigator.pop(context);
                  //           },
                  //           child: SvgPicture.asset("assets/svg/arrow.svg"),
                  //         ),
                  //       ),
                  //       trailing: [
                  //         InkWell(
                  //           borderRadius: BorderRadius.circular(100.r),
                  //           onTap: () {},
                  //           child: SvgPicture.asset("assets/svg/ph_microphone.svg"),
                  //         ),
                  //         SizedBox(width: 16.w),
                  //       ],
                  //     );
                  //   },
                  // ),
                  SearchBar(
                    onTap: () {
                      // controller.openView();
                    },
                    onChanged: (value) {
                      if (value.length > 3) {
                        context.read<SearchResultBloc>().add(SendSearchResultEvent(searchText: value));
                      }
                    },
                    controller: controller,
                    leading: CircleAvatar(
                      backgroundColor: AppColors.c5FE0D8,
                      radius: 24.w,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/svg/arrow.svg"),
                      ),
                    ),
                    trailing: [
                      InkWell(
                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {},
                        child: SvgPicture.asset("assets/svg/ph_microphone.svg"),
                      ),
                      SizedBox(width: 16.w),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  if (state is SearchResultLoaded)
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (int i = 0; i < state.searchResultResponse!.results!.length; i++)
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.h),
                              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                              decoration: BoxDecoration(
                                color: AppColors.cFEFEFE,
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.searchResultResponse?.results?[i].title ?? "",
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(color: AppColors.c1D948D),
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(child: Text(state.searchResultResponse?.results?[i].content ?? "")),
                                      Container(
                                        height: 116.w,
                                        width: 116.w,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                                        color: AppColors.c5FE0D8),
                                        child: Image.network(state.searchResultResponse?.results?[i].imageurls ?? ""),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
