import 'package:flutter/material.dart';
import 'package:tabnews/shared/constants.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: 90,
          color: kGrey900,
        ),
        Positioned(
          top: 22,
          left: 16,
          child: Image.asset(
            'assets/images/logo.png',
            color: Colors.white,
            height: 52,
          ),
        ),
        const Positioned(
          top: 32,
          left: 86,
          child: Text(
            'TabNews',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}
