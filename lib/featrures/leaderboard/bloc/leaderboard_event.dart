part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.getLeader() = LeaderboardEventGetLeader;
  const factory LeaderboardEvent.getLeaderboard() =
      LeaderboardEventGetLeaderboard;
}
