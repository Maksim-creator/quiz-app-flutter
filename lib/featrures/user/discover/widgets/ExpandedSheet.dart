import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/user/discover/widgets/TopContent.dart';

import '../../../../assets/colors.dart';
import '../../../categories/models/category.dart';
import '../../home/widgets/CircleTabIndicator.dart';
import 'CategoryContent.dart';
import 'FriendsContent.dart';
import 'QuizContent/QuizContent.dart';

class ExpandedSheet extends StatefulWidget {
  final bool isLoading;
  final List<Category> filteredCategories;
  final String searchValue;

  const ExpandedSheet(
      {super.key,
      required this.filteredCategories,
      required this.isLoading,
      required this.searchValue});

  @override
  State<ExpandedSheet> createState() => _ExpandedSheetState();
}

class _ExpandedSheetState extends State<ExpandedSheet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
              indicator:
                  CircleTabIndicator(color: ColorConstants.violet, radius: 3),
              labelColor: ColorConstants.violet,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: Colors.grey.withOpacity(0.7),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(
                  height: 50,
                  text: "Top",
                ),
                Tab(height: 50, text: "Quiz"),
                Tab(height: 50, text: "Categories"),
                Tab(
                  height: 50,
                  text: 'Friends',
                )
              ]),
          SizedBox(
            height:
                Device.get().isTablet ? Device.height / 3 : Device.height / 4,
            child: TabBarView(children: [
              TopContent(searchValue: widget.searchValue),
              QuizContent(searchValue: widget.searchValue),
              CategoryContent(
                  searchValue: widget.searchValue,
                  filteredCtegories: widget.filteredCategories,
                  isLoading: widget.isLoading),
              FriendsContent()
            ]),
          ),
        ],
      ),
    );
  }
}
