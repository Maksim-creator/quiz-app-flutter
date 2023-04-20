part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
  const factory FriendsEvent.getFriendsList() = _FriendsEventGetFriendsList;
  const factory FriendsEvent.getIncomingRequests() =
      _FriendsEventGetIncomingRequests;
  const factory FriendsEvent.submitFriendRequest({required int whoSentId}) =
      _FriendsEventSubmitFriendRequest;
  const factory FriendsEvent.rejectFriendRequest({required int whoSentId}) =
      _FriendsEventRejectFriendRequest;
  const factory FriendsEvent.sendFriendRequest({required int friendId}) =
      _FriendsEventSendFriendRequest;
}
