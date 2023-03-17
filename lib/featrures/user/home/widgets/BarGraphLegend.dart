import 'package:flutter/material.dart';

import 'BarGraphWidget.dart';

class BarGraphLegend extends StatefulWidget {
  final List<Legend> legendLabels;

  const BarGraphLegend({super.key, required this.legendLabels});

  @override
  State<BarGraphLegend> createState() => _BarGraphLegendState();
}

class _BarGraphLegendState extends State<BarGraphLegend> {
  Widget renderLegendLabel(Legend legend) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(int.parse('0xff${legend.color}')),
              borderRadius: BorderRadius.circular(100)),
          height: 10,
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            legend.label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 15, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              widget.legendLabels.map((e) => renderLegendLabel(e)).toList(),
        ),
      ),
    );
  }
}
