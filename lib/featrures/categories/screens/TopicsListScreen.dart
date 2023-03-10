import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';

import '../../quizzes/models/quiz.dart';

class TopicsListScreen extends StatefulWidget {
  final String category;

  const TopicsListScreen({super.key, required this.category});

  @override
  State<TopicsListScreen> createState() => _TopicsListScreenState();
}

class _TopicsListScreenState extends State<TopicsListScreen> {
  @override
  void initState() {
    context
        .read<QuizzesBloc>()
        .add(QuizzesEvent.getTopicsList(category: widget.category));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Choose the topic',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: SafeArea(child: BlocBuilder<QuizzesBloc, QuizzesState>(
        builder: (context, state) {
          return Container(
              height: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: state.isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: ColorConstants.darkViolet,
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemCount: state.topics.length,
                      itemBuilder: (context, index) {
                        Topic topic = state.topics[index];
                        return OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                side: const BorderSide(
                                    color: Colors.transparent)),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  '/main_screen/count_selection',
                                  arguments: topic);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 15),
                              padding: EdgeInsets.symmetric(
                                  vertical: Device.get().isTablet ? 14 : 8,
                                  horizontal: 12),
                              decoration: BoxDecoration(
                                  color: ColorConstants.lightViolet,
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          ColorConstants.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(2, 2),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Icon(
                                    IconData(int.parse(topic.icon),
                                        fontFamily: 'MaterialIcons'),
                                    color: ColorConstants.violet,
                                    size: Device.get().isTablet ? 30 : 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        topic.topic,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.grey.shade800,
                                            fontSize: Device.get().isTablet
                                                ? 18
                                                : 14),
                                      ),
                                      Text(
                                        'Created by ${topic.author}',
                                        style: TextStyle(
                                            fontSize:
                                                Device.get().isTablet ? 16 : 12,
                                            color: Colors.grey.shade700),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ));
                      },
                    ));
        },
      )),
    );
  }
}

// Center(
//                   child: Column(
//                     children: [
//                       Lottie.asset(
//                         'lib/assets/lottieAnimations/categoriesNotFound.json',
//                       ),
//                       Text(
//                         'Can not load topics. Try again later.',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w700,
//                             color: Colors.red.shade400),
//                       )
//                     ],
//                   ),
//                 );