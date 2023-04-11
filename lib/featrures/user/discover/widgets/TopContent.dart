import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/user/discover/widgets/FriendsList.dart';
import 'package:quizz_app/featrures/user/home/widgets/LiveQuizzesList.dart';

import '../../../categories/bloc/categories_bloc.dart';

class TopContent extends StatefulWidget {
  final String searchValue;

  const TopContent({super.key, required this.searchValue});

  @override
  State<TopContent> createState() => _TopContentState();
}

class _TopContentState extends State<TopContent> {
  @override
  void initState() {
    super.initState();
    context
        .read<CategoriesBloc>()
        .add(const CategoriesEvent.getAvailableCategories());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        LiveQuizzesList(
          searchValue: widget.searchValue,
        ),
        FriendsList()
      ]),
    );
  }
}
