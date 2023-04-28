import 'package:flutter/material.dart';

class BattlesHeaderButton extends StatelessWidget {
  const BattlesHeaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: IconButton(
            icon: const Icon(Icons.emoji_events),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed('/main_screen/battles');
            }),
      ),
    );
  }
}
