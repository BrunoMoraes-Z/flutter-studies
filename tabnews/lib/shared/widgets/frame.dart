import 'package:flutter/material.dart';
import 'package:tabnews/shared/tab_header.dart';

class Frame extends StatelessWidget {
  const Frame({
    Key? key,
    required this.child,
    this.clean = false,
  }) : super(key: key);

  final Widget child;
  final bool clean;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            TabHeader(size: size),
            Positioned(
              top: 90,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: clean
                    ? child
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: child,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
