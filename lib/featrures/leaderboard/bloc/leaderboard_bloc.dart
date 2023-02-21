import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/leaderboard_repo.dart';
import '../models/leaderboard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_bloc.freezed.dart';
part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final LeaderboardRepo leaderboardRepo;
  LeaderboardBloc({required this.leaderboardRepo})
      : super(const LeaderboardState.loading()) {
    on<LeaderboardEventGetLeader>((event, emit) async {
      const LeaderboardState.loading();

      try {
        Leader leader = await leaderboardRepo.getLeader();

        emit(LeaderboardState.loaded(leader: leader));
      } catch (e) {
        throw Exception(e.toString());
      }
    });
  }
}
