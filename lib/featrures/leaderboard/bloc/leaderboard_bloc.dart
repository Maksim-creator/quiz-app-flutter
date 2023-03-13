import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/leaderboard_repo.dart';
import '../models/leaderboard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_bloc.freezed.dart';
part 'leaderboard_event.dart';

@freezed
abstract class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    required Leader leader,
    required List<Leader> leaderboard,
    @Default(false) bool isLoading,
  }) = _LeaderboardState;
}

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final LeaderboardRepo leaderboardRepo;
  LeaderboardBloc({required this.leaderboardRepo})
      : super(const LeaderboardState(
            leader: Leader(avatar: '', totalExperience: 0, name: ''),
            leaderboard: []));

  @override
  Stream<LeaderboardState> mapEventToState(LeaderboardEvent event) async* {
    yield* event.when(getLeader: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      Leader leader = await leaderboardRepo.getLeader();

      final updatedState = currentState.copyWith(
        leader: leader,
        isLoading: false,
      );
      yield updatedState;
    }, getLeaderboard: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      List<Leader> leaderboard = await leaderboardRepo.getLeaderboard();

      final updatedState =
          currentState.copyWith(leaderboard: leaderboard, isLoading: false);

      yield updatedState;
    });
  }
}
