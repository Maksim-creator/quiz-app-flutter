import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/cubit/quizzes_cubit.dart';
import 'package:quizz_app/featrures/user/home/widgets/CategoryCard.dart';

import '../../../../api/quizzes.dart';

class LiveQuizzesList extends StatefulWidget {
  const LiveQuizzesList({super.key});

  @override
  State<LiveQuizzesList> createState() => _LiveQuizzesListState();
}

class _LiveQuizzesListState extends State<LiveQuizzesList> {
  void getCategories() async {
    await QuizzesApi().getAvailableCategories(context);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getCategories());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizzesCubit, QuizzesState>(
      builder: (context, state) {
        return Container(
          height: 304,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Live Quizzes',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: ColorConstants.violet, fontSize: 13),
                      ))
                ],
              ),
              state.categories.isNotEmpty
                  ? ListView.builder(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        return CategoryCard(
                            category: state.categories[index].category,
                            icon: state.categories[index].icon,
                            quizzesCount: state.categories[index].quizzesCount,
                            selectedTimes:
                                state.categories[index].selectedTimes);
                      },
                    )
                  : Column(
                      children: [
                        Lottie.asset(
                            'lib/assets/lottieAnimations/categoriesNotFound.json',
                            height: 150),
                        Text(
                          'Can not load categories. Try again later.',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.red.shade400),
                        )
                      ],
                    ),
            ],
          ),
        );
      },
    );
  }
}
