import 'dart:convert';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double? width;
  final double? height;
  final String avatar;

  const Avatar({super.key, required this.avatar, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        child: Container(
          height: height ?? 60,
          width: width ?? 60,
          color: Colors.white,
          child: Image.memory(
            base64Decode(avatar),
            width: width ?? 60,
            height: height ?? 60,
            fit: BoxFit.cover,
          ),
        ));
  }
}
