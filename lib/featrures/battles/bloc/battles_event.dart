part of 'battles_bloc.dart';

@freezed
class BattlesEvent with _$BattlesEvent {
  const factory BattlesEvent.getIncomingRequests() =
      _BattlesEventGetIncomingRequests;
  const factory BattlesEvent.rejectBattleRequest(Battle battleRequest) =
      _BattlesEventRejectBattleRequest;
}
