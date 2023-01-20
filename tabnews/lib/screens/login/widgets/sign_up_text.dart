import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Novo no TabNews? '),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(4),
          child: Text(
            'Crie uma conta',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[400],
            ),
          ),
        ),
      ],
    );
  }
}
