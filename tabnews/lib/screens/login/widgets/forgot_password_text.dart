import 'package:flutter/material.dart';
import 'package:tabnews/shared/constants.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: onTap,
          child: Text(
            'Esqueci minha senha.',
            style: TextStyle(
              color: kGrey900.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
