import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';
import 'package:quizz_app/featrures/user/home/widgets/CategoryCard.dart';

class LiveQuizzesList extends StatefulWidget {
  const LiveQuizzesList({super.key});

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
        return Container(
          height: Device.screenHeight / 1.5,
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
                  : Container(
                      height:
                          Device.get().isTablet ? Device.screenHeight / 2 : 190,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemCount: state.categories.length,
                        itemBuilder: (context, index) {
                          return CategoryCard(
                              category: state.categories[index].category,
                              icon: state.categories[index].icon,
                              quizzesCount:
                                  state.categories[index].quizzesCount,
                              selectedTimes:
                                  state.categories[index].selectedTimes);
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