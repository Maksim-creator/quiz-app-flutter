import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class LoadingOverlay extends StatelessWidget {
  Widget child;
  bool loading;

  LoadingOverlay({super.key, required this.loading, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (loading)
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(dismissible: false, color: Colors.black),
          ),
        if (loading)
          Center(
            child: CircularProgressIndicator(
              color: ColorConstants.violet,
              backgroundColor: Colors.white,
            ),
          ),
      ],
    );
  }
}
