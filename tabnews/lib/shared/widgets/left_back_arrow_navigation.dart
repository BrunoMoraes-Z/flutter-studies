import 'package:flutter/material.dart';

class LeftBackArrowNavigation extends StatelessWidget {
  const LeftBackArrowNavigation({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: const [
            Icon(
              Icons.arrow_back_ios,
            ),
            Text('Voltar'),
          ],
        ),
      ),
    );
  }
}
