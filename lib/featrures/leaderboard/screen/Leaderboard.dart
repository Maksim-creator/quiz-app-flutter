import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/leaderboard/bloc/leaderboard_bloc.dart';
import 'package:quizz_app/featrures/leaderboard/widgets/LeadersList.dart';
import 'package:quizz_app/featrures/leaderboard/widgets/Podium.dart';
import '../../../assets/colors.dart';
import '../models/leaderboard.dart';
import '../widgets/FilterSwitch.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  final String assetName = 'lib/assets/svg/leaderboard.svg';
  final String baseAvatar = 'lib/assets/baseAvatar.png';

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    context
        .read<LeaderboardBloc>()
        .add(const LeaderboardEvent.getLeaderboard());
    super.initState();
  }

  Widget getLeaderboardWidget(List<Leader> leaderboard) {
    List<Leader> podium = leaderboard.sublist(0, 3);
    Leader firstPlace = podium[1];
    Leader secondPlace = podium[0];
    podium[0] = firstPlace;
    podium[1] = secondPlace;
    List<Leader> restLeaders = leaderboard.sublist(3, 10);

    return Column(
      children: [
        Podium(podium: podium),
        LeadersList(
          restLeaders: restLeaders,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Leadrboard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: BlocBuilder<LeaderboardBloc, LeaderboardState>(
        builder: (context, state) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FilterWidget(),
                state.isLoading || state.leaderboard.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          backgroundColor: ColorConstants.darkViolet,
                        ),
                      )
                    : getLeaderboardWidget(state.leaderboard)
              ]);
        },
      ),
    );
  }
}
