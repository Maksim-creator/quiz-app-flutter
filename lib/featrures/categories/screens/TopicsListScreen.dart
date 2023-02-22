import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';

import '../../quizzes/models/quiz.dart';

class TopicsListScreen extends StatefulWidget {
  const TopicsListScreen({super.key});

  @override
  State<TopicsListScreen> createState() => _TopicsListScreenState();
}

class _TopicsListScreenState extends State<TopicsListScreen> {
  @override
  void initState() {
    context
        .read<QuizzesBloc>()
        .add(const QuizzesEvent.getTopicsList(category: 'Math'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<QuizzesBloc>().state;
    return Container(
        margin:
            const EdgeInsets.only(bottom: 100, top: 60, left: 10, right: 10),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: state.when(loading: () {
          return Center(
            child: CircularProgressIndicator(color: ColorConstants.violet),
          );
        }, topSelectedLoaded: (t) {
          return Text('data1');
        }, topicsLoaded: (topics) {
          return ListView.builder(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            itemCount: topics.length,
            itemBuilder: (context, index) {
              Topic topic = topics[index];
              return OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      side: const BorderSide(color: Colors.transparent)),
                  onPressed: () {},
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        color: ColorConstants.lightViolet,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstants.grey.withOpacity(0.3),
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
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              topic.topic,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade800),
                            ),
                            Text(
                              'Created by ${topic.author}',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade700),
                            )
                          ],
                        ),
                      )
                    ]),
                  ));
            },
          );
        }, error: () {
          return Center(
            child: Column(
              children: [
                Lottie.asset(
                  'lib/assets/lottieAnimations/categoriesNotFound.json',
                ),
                Text(
                  'Can not load topics. Try again later.',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.red.shade400),
                )
              ],
            ),
          );
        }));
  }
}
