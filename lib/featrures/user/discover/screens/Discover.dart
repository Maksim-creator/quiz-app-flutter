import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';
import 'package:quizz_app/featrures/user/discover/widgets/ExpandedSheet.dart';
import 'package:quizz_app/featrures/user/discover/widgets/Stick.dart';
import 'package:quizz_app/featrures/user/discover/widgets/DiscoverContent.dart';
import 'package:quizz_app/featrures/user/discover/widgets/TopPicksCard.dart';
import 'package:quizz_app/widgets/TextInput.dart';
import '../../../categories/models/category.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover>
    with SingleTickerProviderStateMixin {
  TextEditingController search = TextEditingController();
  List<Category> filteredCategories = [];
  double containerHeight = Device.screenHeight;
  double minTopPosition = Device.get().isTablet
      ? Device.screenHeight / 5
      : Device.screenHeight / 3.3;
  double maxTopPosition = 75;
  bool expanded = false;

  void filterCategories(List<Category> categories, String search) {
    if (search.isEmpty) {
      setState(() {
        filteredCategories = categories;
        expanded = false;
      });
    } else {
      setState(() {
        expanded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CategoriesBloc>().state;

    if (state.categories.isNotEmpty) {
      filterCategories(state.categories, search.text);
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Discover',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
          return SizedBox(
            height: Device.screenHeight,
            width: Device.screenWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Device.get().isTablet ? 50 : 0),
              child: Stack(children: [
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
                        expanded
                            ? const SizedBox.shrink()
                            : const TopPicksCard()
                      ]),
                    )),
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    top: expanded ? maxTopPosition : minTopPosition,
                    child: Column(
                      children: [
                        const Stick(),
                        Container(
                            width: Device.get().isTablet
                                ? Device.screenWidth - 100
                                : Device.screenWidth,
                            height: containerHeight,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: expanded ? 0 : 25),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: expanded ? 0 : 20),
                              child: expanded
                                  ? ExpandedSheet(
                                      filteredCategories: filteredCategories,
                                      searchValue: search.text,
                                      isLoading: state.isLoading)
                                  : DiscoverContent(
                                      filteredCategories: filteredCategories,
                                      isLoading: state.isLoading),
                            ))
                      ],
                    ))
              ]),
            ),
          );
        },
      ),
    );
  }
}
