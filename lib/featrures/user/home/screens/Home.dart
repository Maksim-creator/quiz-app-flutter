import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/user/home/widgets/Header.dart';
import 'package:quizz_app/featrures/user/home/widgets/LiveQuizzesList.dart';
import 'package:quizz_app/featrures/user/home/widgets/RecentQuiz.dart';
import 'package:quizz_app/featrures/user/home/widgets/ShopCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: Device.get().isAndroid ? 20 : 40,
            left: Device.get().isTablet ? 50 : 0,
            right: Device.get().isTablet ? 50 : 0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: const Column(
                  children: [HomeHeader(), RecentQuiz(), ShopCard()],
                ),
              ),
              const LiveQuizzesList(),
            ],
          ),
        ));
  }
}
