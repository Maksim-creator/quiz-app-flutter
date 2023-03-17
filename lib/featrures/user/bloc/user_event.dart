part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getBadges() = _UserEventGetBadges;
  const factory UserEvent.getUserQuizDetails() = _UserEventGetUserQuizDetails;
}
