part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState.loading() = LeaderboardStateLoading;
  const factory LeaderboardState.loaded({required Leader? leader}) =
      LeaderboardStateLoaded;
  const factory LeaderboardState.error() = LeaderboardStateError;
}
