import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/user/profile/widgets/Statistic/BarGraph/BarGraphLegend.dart';
import 'package:quizz_app/featrures/user/models/chartData.dart';

import '../../../../bloc/user_bloc.dart';

class Legend {
  final String label;
  final String color;

  Legend({required this.color, required this.label});
}

class BarGraphWidget extends StatefulWidget {
  const BarGraphWidget({super.key});

  @override
  State<BarGraphWidget> createState() => _BarGraphWidgetState();
}

class _BarGraphWidgetState extends State<BarGraphWidget> {
  String notFoundQuizData =
      'lib/assets/lottieAnimations/completedQuizzesNotFound.json';

  BarChartGroupData generateGroupData(int x, double y, Color color) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
            toY: y.toDouble(),
            color: color,
            width: 30,
            borderRadius: BorderRadius.circular(8)),
      ],
    );
  }

  List<BarChartGroupData> renderChartItems(List<ChartData> chartData) {
    return chartData.map((e) {
      int index = chartData.indexOf(e);

      return generateGroupData(index, double.parse(e.averageDonePercentage),
          Color(int.parse('0xff${e.color}')));
    }).toList();
  }

  List<HorizontalLine> renderHorizontalLines() {
    List<double> y = [0.5, 25, 50, 75, 99];
    return y
        .map((e) => HorizontalLine(
            y: e, color: Colors.white.withOpacity(0.2), dashArray: [10, 10]))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      height: 443,
      decoration: BoxDecoration(
          color: ColorConstants.violet,
          borderRadius: BorderRadius.circular(20)),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          List<ChartData> chartData = state.quizData.chartData;

          List<Legend> legendLabels = chartData
              .map(
                (e) => Legend(color: e.color, label: e.category),
              )
              .toList();

          return Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const Text(
                    'Top perfomance by category',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.equalizer_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            state.isLoading
                ? Center(
                    heightFactor: 7,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: ColorConstants.darkViolet,
                    ),
                  )
                : chartData.isNotEmpty
                    ? Column(
                        children: [
                          BarGraphLegend(legendLabels: legendLabels),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.only(bottom: 30),
                            height: 290,
                            child: BarChart(
                              BarChartData(
                                maxY: 100,
                                minY: 0,
                                barTouchData: BarTouchData(enabled: false),
                                titlesData: FlTitlesData(
                                    rightTitles:
                                        AxisTitles(drawBehindEverything: false),
                                    topTitles:
                                        AxisTitles(drawBehindEverything: false),
                                    leftTitles: AxisTitles(
                                      axisNameSize: 25,
                                      axisNameWidget: const Text(
                                        'Average done percentage',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 25,
                                        reservedSize: 50,
                                        getTitlesWidget: (value, meta) {
                                          return Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '${meta.formattedValue}%',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                      reservedSize: 54,
                                      showTitles: true,
                                      getTitlesWidget: (value, meta) {
                                        return Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                '${chartData[int.parse(meta.formattedValue)].averageAnsweredQuestions}/${chartData[int.parse(meta.formattedValue)].averageTotalQuestions}',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: Column(children: [
                                                Text(
                                                  'Questions',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade400,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  'Answered',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade400,
                                                      fontSize: 10),
                                                )
                                              ]),
                                            )
                                          ],
                                        );
                                      },
                                    ))),
                                extraLinesData: ExtraLinesData(
                                  extraLinesOnTop: false,
                                  horizontalLines: renderHorizontalLines(),
                                ),
                                borderData: FlBorderData(show: false),
                                backgroundColor: Colors.transparent,
                                barGroups: renderChartItems(chartData),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Container(
                            decoration: BoxDecoration(
                                color:
                                    ColorConstants.lightViolet.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              child: Column(
                                children: [
                                  const Text(
                                    'Try to participate in quizzes to find out the data on completed quizzes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  LottieBuilder.asset(
                                    notFoundQuizData,
                                    height: 200,
                                    width: 200,
                                  )
                                ],
                              ),
                            )),
                      )
          ]);
        },
      ),
    );
  }
}
