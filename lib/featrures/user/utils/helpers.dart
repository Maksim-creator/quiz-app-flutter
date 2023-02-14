import 'package:flutter/material.dart';

Greeting defineTimePeriod(int hour) {
  if (hour >= 0 && hour <= 6) {
    return Greeting(greeting: 'GOOD NIGHT', icon: Icons.dark_mode);
  }
  if (hour > 6 && hour < 12) {
    return Greeting(greeting: 'GOOD MORNING', icon: Icons.wb_twilight);
  }

  if (hour >= 12 && hour <= 18) {
    return Greeting(greeting: 'GOOD DAY', icon: Icons.sunny);
  }

  if (hour > 18 && hour < 23) {
    return Greeting(greeting: 'GOOD EVENING', icon: Icons.wb_twighlight);
  }
  return Greeting(greeting: 'Hi', icon: Icons.waving_hand);
}

class Greeting {
  IconData icon;
  String greeting;

  Greeting({required this.greeting, required this.icon});
}
