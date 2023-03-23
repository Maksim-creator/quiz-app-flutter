part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getBadges() = _UserEventGetBadges;
  const factory UserEvent.getUserQuizDetails() = _UserEventGetUserQuizDetails;
  const factory UserEvent.getRecentQuiz(Material.BuildContext context) =
      _UserEventGetRecentQuiz;
  const factory UserEvent.postRecentQuiz(
          RecentQuiz recentQuiz, Material.BuildContext context) =
      _UserEventPostRecentQuiz;
}
