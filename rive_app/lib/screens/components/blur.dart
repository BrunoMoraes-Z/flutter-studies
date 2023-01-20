import 'dart:ui';

import 'package:flutter/material.dart';

class Blur extends StatelessWidget {
  const Blur({
    Key? key,
    required this.sigmaX,
    required this.sigmaY,
  }) : super(key: key);

  final double sigmaX, sigmaY;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: SizedBox(),
      ),
    );
  }
}
