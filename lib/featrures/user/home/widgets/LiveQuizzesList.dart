import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';
import 'package:quizz_app/featrures/categories/models/category.dart';
import 'package:quizz_app/featrures/user/home/widgets/CategoryCard.dart';

class LiveQuizzesList extends StatefulWidget {
  final String? searchValue;

  const LiveQuizzesList({super.key, this.searchValue});

  @override
  State<LiveQuizzesList> createState() => _LiveQuizzesListState();
}

class _LiveQuizzesListState extends State<LiveQuizzesList> {
  @override
  void initState() {
    super.initState();
    context
        .read<CategoriesBloc>()
        .add(const CategoriesEvent.getAvailableCategories());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        List<Category> filteredCategories = widget.searchValue != null
            ? state.categories
                .where((category) => category.category
                    .toLowerCase()
                    .contains(widget.searchValue!.toLowerCase()))
                .toList()
            : state.categories;
        double? height = widget.searchValue != null
            ? null
            : Device.get().isTablet
                ? Device.screenHeight / 2
                : 190;
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              state.isLoading
                  ? Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Center(
                          child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: ColorConstants.darkViolet,
                      )),
                    )
                  : filteredCategories.isEmpty || state.categories.isEmpty
                      ? Center(
                          child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Lottie.asset(
                                      'lib/assets/lottieAnimations/categoriesNotFound.json',
                                      height: 100),
                                  const Text(
                                    "No categories found for this query.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                        )
                      : Container(
                          height: height,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(0),
                            shrinkWrap: true,
                            itemCount: filteredCategories.length,
                            itemBuilder: (context, index) {
                              return CategoryCard(
                                  category: filteredCategories[index].category,
                                  icon: filteredCategories[index].icon,
                                  quizzesCount:
                                      filteredCategories[index].quizzesCount,
                                  selectedTimes:
                                      filteredCategories[index].selectedTimes);
                            },
                          ),
                        )
            ],
          ),
        );
      },
    );
  }
}

/////////////// TODO Implement error ///////////////
// Column(
//                   children: [
//                     Lottie.asset(
//                         'lib/assets/lottieAnimations/categoriesNotFound.json',
//                         height: 150),
//                     Text(
//                       'Can not load categories. Try again later.',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w700,
//                           color: Colors.red.shade400),
//                     )
//                   ],
//                 );