import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/categories/widgets/TopicItem.dart';
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
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemCount: state.topics.length,
                        itemBuilder: (context, index) {
                          Topic topic = state.topics[index];
                          return TopicItem(topic: topic);
                        },
                      ),
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