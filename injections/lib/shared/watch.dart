import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
  const Watch({
    required this.listenable,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Listenable listenable;
  final Widget Function() child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: listenable,
      builder: (_, __) => child(),
    );
  }
}
