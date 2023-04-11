import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/categories/models/category.dart';
import 'package:quizz_app/featrures/user/discover/widgets/CategoryList.dart';
import 'package:quizz_app/featrures/user/discover/widgets/TopPlayer.dart';

class DiscoverContent extends StatefulWidget {
  final bool isLoading;
  final List<Category> filteredCategories;

  const DiscoverContent(
      {super.key, required this.filteredCategories, required this.isLoading});

  @override
  State<DiscoverContent> createState() => _DiscoverContentState();
}

class _DiscoverContentState extends State<DiscoverContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopPlayerCard(),
          SizedBox(
            width: Device.screenWidth,
            height: Device.get().isTablet ? Device.screenHeight - 600 : 240,
            child: const CategoryList(),
          )
        ]);
  }
}
