import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';

import '../../../../assets/colors.dart';
import '../../../categories/models/category.dart';

class CategoryList extends StatefulWidget {
  final String? searchValue;

  const CategoryList({super.key, this.searchValue});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
          ),
        ),
        BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (((context, state) {
          List<Category> filteredCategories = widget.searchValue != null
              ? state.categories
                  .where((category) => category.category
                      .toLowerCase()
                      .contains(widget.searchValue!.toLowerCase()))
                  .toList()
              : state.categories;
          return state.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: ColorConstants.darkViolet,
                  ),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    )
                  : Flexible(
                      child: GridView.count(
                      crossAxisCount: 2,
                      children:
                          List.generate(filteredCategories.length, (index) {
                        Category category = filteredCategories[index];
                        return Container(
                            margin:
                                EdgeInsets.all(Device.get().isTablet ? 30 : 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: const Offset(2, 3),
                                  ),
                                ],
                                color:
                                    Color(int.parse('0xFF${category.color}')),
                                borderRadius: BorderRadius.circular(30)),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    '/main_screen/topics_list_screen',
                                    arguments: category.category);
                              },
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(
                                            Device.get().isTablet ? 20 : 8),
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Icon(
                                          IconData(int.parse(category.icon),
                                              fontFamily: 'MaterialIcons'),
                                          color: Colors.white,
                                          size: Device.get().isTablet ? 50 : 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 12, bottom: 5),
                                        child: Text(
                                          category.category,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: Device.get().isTablet
                                                  ? 20
                                                  : 16),
                                        ),
                                      ),
                                      Text('${category.quizzesCount} quizzes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: Device.get().isTablet
                                                  ? 15
                                                  : 10))
                                    ]),
                              ),
                            ));
                      }),
                    ));
        })))
      ],
    );
  }
}
