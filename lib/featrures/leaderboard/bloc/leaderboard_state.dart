part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState.loading() = LeaderboardStateLoading;
  const factory LeaderboardState.loaded(
      {Leader? leader, List<Leader>? leaderboard}) = LeaderboardStateLoaded;
  const factory LeaderboardState.error() = LeaderboardStateError;
}
