import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/user/discover/widgets/CategoryList.dart';

import '../../../categories/models/category.dart';

class CategoryContent extends StatefulWidget {
  final List<Category> filteredCtegories;
  final bool isLoading;
  final String searchValue;

  const CategoryContent(
      {super.key,
      required this.filteredCtegories,
      required this.isLoading,
      required this.searchValue});

  @override
  State<CategoryContent> createState() => _CategoryContentState();
}

class _CategoryContentState extends State<CategoryContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CategoryList(
        searchValue: widget.searchValue,
      ),
    );
  }
}
