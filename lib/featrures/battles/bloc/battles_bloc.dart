import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/featrures/battles/models/battle.dart';
import 'package:quizz_app/featrures/repositories/battles_repo.dart';

part 'battles_bloc.freezed.dart';
part 'battles_event.dart';

@freezed
abstract class BattlesState with _$BattlesState {
  const factory BattlesState({
    required List<Battle> incomingRequests,
    @Default(false) bool isIncomingRequestsLoading,
    @Default('') String battlesError,
  }) = _FriendsState;
}

class BattlesBloc extends Bloc<BattlesEvent, BattlesState> {
  final BattleRepo battlesRepo;
  BattlesBloc({required this.battlesRepo})
      : super(const BattlesState(incomingRequests: []));

  @override
  Stream<BattlesState> mapEventToState(BattlesEvent event) async* {
    yield* event.when(getIncomingRequests: () async* {
      final currentState = state;
      final loadingState =
          currentState.copyWith(isIncomingRequestsLoading: true);
      yield loadingState;

      Either<String, List<Battle>> response =
          await battlesRepo.getIncomingBattle();

      yield* response.fold((error) async* {
        final updatedState = currentState.copyWith(
          battlesError: error,
          isIncomingRequestsLoading: false,
        );

        yield updatedState;
      }, (battles) async* {
        final updatedState = currentState.copyWith(
            incomingRequests: battles,
            isIncomingRequestsLoading: false,
            battlesError: '');

        yield updatedState;
      });
    });
  }
}
