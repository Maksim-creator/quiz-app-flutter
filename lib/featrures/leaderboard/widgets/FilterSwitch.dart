import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/assets/colors.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  int _selectedTabIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Device.get().isTablet ? 165 : 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: ColorConstants.darkViolet,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: Device.get().isTablet
                ? Device.screenWidth / 1.5
                : Device.screenWidth - 50,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: 5,
                  left: _selectedTabIdx == 0
                      ? !Device.get().isTablet
                          ? 165
                          : Device.screenWidth / 2
                      : 0,
                  right: _selectedTabIdx == 0
                      ? 0
                      : !Device.get().isTablet
                          ? 165
                          : Device.screenWidth / 2,
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(0.4)),
                    height: 40,
                    width: 90,
                  ),
                ),
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _selectedTabIdx = 1;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      surfaceTintColor: Colors.transparent,
                      foregroundColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    child: Text(
                      'Weekly',
                      style: TextStyle(
                          color: _selectedTabIdx == 1
                              ? Colors.white
                              : Colors.grey.shade500),
                    )),
                Positioned(
                    right: 0,
                    child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTabIdx = 0;
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            foregroundColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            side: const BorderSide(color: Colors.transparent),
                            shape: const StadiumBorder()),
                        child: Text(
                          'All time',
                          style: TextStyle(
                              color: _selectedTabIdx == 0
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
