import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle.freezed.dart';
part 'battle.g.dart';

@freezed
class Battle with _$Battle {
  const factory Battle({
    String? battleId,
    int? from,
    required int to,
    required String topic,
    required String difficultyLevel,
    required int bid,
    String? comment,
  }) = _Battle;

  factory Battle.fromJson(Map<String, dynamic> json) => _$BattleFromJson(json);
}
