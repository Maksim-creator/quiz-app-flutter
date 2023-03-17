import 'package:freezed_annotation/freezed_annotation.dart';

part 'chartData.freezed.dart';
part 'chartData.g.dart';

@freezed
class ChartData with _$ChartData {
  const factory ChartData(
      {required String category,
      required String color,
      required String averageTotalQuestions,
      required String averageAnsweredQuestions,
      required String averageDonePercentage}) = _ChartData;

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);
}
