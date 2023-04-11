import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/categories/widgets/TopicItem.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';
import 'package:quizz_app/featrures/user/discover/widgets/QuizContent/TopSelectedCard.dart';

import '../../../../quizzes/models/quiz.dart';

class QuizContent extends StatefulWidget {
  final String searchValue;

  const QuizContent({super.key, required this.searchValue});

  @override
  State<QuizContent> createState() => _QuizContentState();
}

class _QuizContentState extends State<QuizContent> {
  @override
  void initState() {
    context
        .read<QuizzesBloc>()
        .add(QuizzesEvent.getAllTopics(context: context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizzesBloc, QuizzesState>(builder: ((context, state) {
      final List<Topic> filteredTopics = state.isLoading || state.topics.isEmpty
          ? state.topics
          : state.topics
              .where((topic) => topic.topic
                  .toLowerCase()
                  .contains(widget.searchValue.toLowerCase()))
              .toList();

      return state.isLoading || state.topics.isEmpty
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                backgroundColor: ColorConstants.violet,
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: SingleChildScrollView(
                child: Column(children: [
                  TopSelectedCard(topic: state.topics[0]),
                  SizedBox(
                    height: Device.screenHeight / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: ListView.builder(
                          itemCount: filteredTopics.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final Topic topic = filteredTopics[index];

                            return TopicItem(topic: topic);
                          }),
                    ),
                  )
                ]),
              ),
            );
    }));
  }
}
