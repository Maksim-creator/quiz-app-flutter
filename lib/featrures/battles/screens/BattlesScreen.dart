import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/battles/bloc/battles_bloc.dart';
import 'package:quizz_app/featrures/battles/widgets/BattleCard.dart';

import '../../../assets/colors.dart';
import '../models/battle.dart';

class BattlesScreen extends StatefulWidget {
  const BattlesScreen({super.key});

  @override
  State<BattlesScreen> createState() => _BattlesScreenState();
}

class _BattlesScreenState extends State<BattlesScreen> {
  @override
  void initState() {
    context.read<BattlesBloc>().add(const BattlesEvent.getIncomingRequests());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 32,
            )),
        title: const Text(
          'Battles',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: BlocBuilder<BattlesBloc, BattlesState>(
            builder: (context, state) {
              if (state.isIncomingRequestsLoading) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: ColorConstants.darkViolet,
                  ),
                );
              }
              if (state.battlesError.isNotEmpty) {
                return Text(state.battlesError.toString());
              }
              return ListView.builder(
                  itemCount: state.incomingRequests.length,
                  itemBuilder: (BuildContext context, index) {
                    final Battle battle = state.incomingRequests[index];
                    return BattleCard(
                        comment: battle.comment.toString(),
                        difficultyLevel: battle.difficultyLevel,
                        topic: battle.topic,
                        fromUserId: battle.from!,
                        bid: battle.bid);
                  });
            },
          ),
        ),
      ),
    );
  }
}
