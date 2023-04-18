import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    });
  }
}
