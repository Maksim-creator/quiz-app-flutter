import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';
import 'package:quizz_app/featrures/user/discover/widgets/TopPicksCard.dart';
import 'package:quizz_app/featrures/user/discover/widgets/TopPlayer.dart';
import 'package:quizz_app/widgets/TextInput.dart';
import '../../../categories/models/category.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  TextEditingController search = TextEditingController();
  List<Category> filteredCategories = [];

  void filterCategories(List<Category> categories, String search) {
    if (search.isEmpty) {
      setState(() {
        filteredCategories = categories;
      });
    } else {
      List<Category> filtered = categories
          .where((category) =>
              category.category.toLowerCase().contains(search.toLowerCase()))
          .toList();

      setState(() {
        filteredCategories = filtered;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CategoriesBloc>().state;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Discover',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IntrinsicHeight(
                child: Column(children: [
                  Flexible(
                    child: TextInput(
                      hintText: 'Quiz, categories, or friends',
                      label: '',
                      prefixIcon: Icons.search,
                      controller: search,
                      iconColor: Colors.white,
                      inputBackground: ColorConstants.darkViolet,
                      hintTextColor: ColorConstants.darkGrey,
                      inputTextColor: Colors.white,
                      verticalInputPadding: 0,
                      onChanged: (String value) =>
                          filterCategories(filteredCategories, value),
                    ),
                  ),
                  const TopPicksCard()
                ]),
              )),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Top player in the game',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                      ),
                      const TopPlayerCard(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                      ),
                      state.when(loading: () {
                        return Center(
                          child: CircularProgressIndicator(
                              color: ColorConstants.violet),
                        );
                      }, loaded: (categories) {
                        filterCategories(categories, search.text);

                        return Flexible(
                            child: GridView.count(
                          crossAxisCount: 2,
                          children:
                              List.generate(filteredCategories.length, (index) {
                            Category category = filteredCategories[index];
                            return Container(
                                margin: const EdgeInsets.all(8),
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
                                    color: Color(
                                        int.parse('0xFF${category.color}')),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Icon(
                                              IconData(int.parse(category.icon),
                                                  fontFamily: 'MaterialIcons'),
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, bottom: 5),
                                            child: Text(
                                              category.category,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Text(
                                              '${category.quizzesCount} quizzes',
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10))
                                        ]),
                                  ),
                                ));
                          }),
                        ));
                      }, error: () {
                        return const Center(
                          child: Text(
                            "Can't load categories",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        );
                      })
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
