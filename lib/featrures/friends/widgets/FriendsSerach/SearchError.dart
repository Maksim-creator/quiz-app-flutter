import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchError extends StatelessWidget {
  final String error;

  const SearchError({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(
            'lib/assets/lottieAnimations/categoriesNotFound.json',
          ),
          Text(
            error,
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.red.shade400),
          )
        ],
      ),
    );
  }
}
