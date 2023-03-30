import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';
import 'package:quizz_app/featrures/repositories/quizzes_repo.dart';
import 'package:quizz_app/featrures/user/bloc/user_bloc.dart';

class RecentQuiz extends StatefulWidget {
  const RecentQuiz({super.key});

  @override
  State<RecentQuiz> createState() => _RecentQuizState();
}

class _RecentQuizState extends State<RecentQuiz> {
  String assenName = 'lib/assets/svg/lines.svg';

  @override
  void initState() {
    context.read<UserBloc>().add(UserEvent.getRecentQuiz(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 82,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: ColorConstants.lightPink),
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                QuizzesRepo().getQuizById(state.recentQuiz.id).then((quiz) {
                  Navigator.pushNamed(context, '/main_screen/count_selection',
                      arguments: Topic(
                          id: quiz.id,
                          category: quiz.category,
                          topic: quiz.topic,
                          icon: quiz.icon,
                          author: quiz.author,
                          selectedTimes: quiz.selectedTimes,
                          tipLink: quiz.tipLink,
                          description: quiz.description));
                });
              },
              child: state.isRecentQuizLoading || state.recentQuiz.icon.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: ColorConstants.violet,
                      ),
                    )
                  : Stack(
                      children: [
                        Positioned(
                          child: SvgPicture.asset(
                            assenName,
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'RECENT QIUZ',
                                    style: TextStyle(
                                        color: ColorConstants.darkPink,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          IconData(
                                              int.parse(state.recentQuiz.icon),
                                              fontFamily: 'MaterialIcons'),
                                          color: ColorConstants.darkTan,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            state.recentQuiz.topic,
                                            style: TextStyle(
                                              color: ColorConstants.darkTan,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: ColorConstants.pink,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100))),
                                child: Text(
                                  '${state.recentQuiz.donePercentage}%',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ));
        },
      ),
    );
  }
}
