import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/featrures/repositories/friends_repo.dart';

part 'friends_bloc.freezed.dart';
// part 'friends_bloc.g.dart';
part 'friends_event.dart';

@freezed
abstract class FriendsState with _$FriendsState {
  const factory FriendsState({
    required List<int> friends,
    required List<int> requestSent,
    required List<int> requestGet,
    @Default(false) bool isFriendsLoading,
    @Default(false) bool isIncomingRequestsLoading,
    @Default('') String friendsError,
  }) = _FriendsState;
}

class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  final FriendsRepo friendsRepo;
  FriendsBloc({required this.friendsRepo})
      : super(const FriendsState(friends: [], requestSent: [], requestGet: []));

  @override
  Stream<FriendsState> mapEventToState(FriendsEvent event) async* {
    yield* event.when(getFriendsList: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isFriendsLoading: true);
      yield loadingState;

      Either<String, List<int>> friends = await friendsRepo.getFriendsList();

      yield* friends.fold((error) async* {
        final updatedState = currentState.copyWith(
          friendsError: error,
          isFriendsLoading: false,
        );

        yield updatedState;
      }, (friends) async* {
        final updatedState = currentState.copyWith(
            friends: friends, isFriendsLoading: false, friendsError: '');

        yield updatedState;
      });
    }, getIncomingRequests: () async* {
      FlutterSecureStorage storage = const FlutterSecureStorage();

      final currentState = state;
      final loadingState =
          currentState.copyWith(isIncomingRequestsLoading: true);
      yield loadingState;

      Either<String, List<int>> incomingRequests =
          await friendsRepo.getIncomingRequests();

      yield* incomingRequests.fold((error) async* {
        final updatedState = currentState.copyWith(
          friendsError: error,
          isIncomingRequestsLoading: false,
        );

        yield updatedState;
      }, (requests) async* {
        final storageRequestsGot = await storage.read(key: 'requestsGot');
        if (storageRequestsGot == null) {
          await storage.write(key: 'requestsGot', value: jsonEncode(requests));
        } else {
          final storageRequests = jsonDecode(storageRequestsGot);

          for (var i = 0; i < requests.length; i++) {
            if (!storageRequests.contains(requests[i])) {
              storageRequests.add(requests[i]);
            }
          }

          await storage.write(
              key: 'requestsGot', value: jsonEncode(storageRequests));
        }

        final updatedState = currentState.copyWith(
            requestGet: requests, isFriendsLoading: false, friendsError: '');

        yield updatedState;
      });
    }, submitFriendRequest: (whoSentId) async* {
      final currentState = state;
      final loadingState =
          currentState.copyWith(isIncomingRequestsLoading: true);

      yield loadingState;

      Either<String, List<int>> incomingRequests =
          await friendsRepo.submitFriendRequest(whoSentId);

      yield* incomingRequests.fold((error) async* {
        final updatedState = currentState.copyWith(
          friendsError: error,
          isIncomingRequestsLoading: false,
        );

        yield updatedState;
      }, (requests) async* {
        final updatedState = currentState.copyWith(
            requestGet: requests,
            isIncomingRequestsLoading: false,
            friendsError: '');

        yield updatedState;
      });
    }, rejectFriendRequest: (whoSentId) async* {
      final currentState = state;
      final loadingState =
          currentState.copyWith(isIncomingRequestsLoading: true);
      yield loadingState;

      Either<String, List<int>> incomingRequests =
          await friendsRepo.rejectFriendRequest(whoSentId);

      yield* incomingRequests.fold((error) async* {
        final updatedState = currentState.copyWith(
          friendsError: error,
          isIncomingRequestsLoading: false,
        );

        yield updatedState;
      }, (requests) async* {
        final updatedState = currentState.copyWith(
            requestGet: requests,
            isIncomingRequestsLoading: false,
            friendsError: '');

        yield updatedState;
      });
    }, sendFriendRequest: (friendId) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isFriendsLoading: true);
      yield loadingState;

      Either<String, List<int>> sentRequests =
          await friendsRepo.sendFriendRequest(friendId);

      yield* sentRequests.fold((error) async* {
        final updatedState = currentState.copyWith(
          friendsError: error,
          isFriendsLoading: false,
        );

        yield updatedState;
      }, (requests) async* {
        final updatedState = currentState.copyWith(
            requestSent: requests, isFriendsLoading: false, friendsError: '');

        yield updatedState;
      });
    });
  }
}
