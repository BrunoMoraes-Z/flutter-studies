import 'package:flutter/material.dart';
import 'package:tabnews/shared/constants.dart';

class FullWidthTextButton extends StatelessWidget {
  const FullWidthTextButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.buttonColor = kGreen,
    this.textColor = Colors.white,
  }) : super(key: key);

  final Color buttonColor;
  final Color textColor;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
