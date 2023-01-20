import 'package:flutter/material.dart';
import 'package:tabnews/shared/constants.dart';

class TextFieldWithLabel extends StatefulWidget {
  const TextFieldWithLabel({
    Key? key,
    required this.label,
    required this.onFill,
    this.obscure = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.name,
  }) : super(key: key);

  final String label;
  final Function(String)? onFill;
  final bool obscure;
  final TextInputAction textInputAction;
  final TextInputType textInputType;

  @override
  State<TextFieldWithLabel> createState() => _TextFieldWithLabelState();
}

class _TextFieldWithLabelState extends State<TextFieldWithLabel> {
  var showing = false;

  toggle() => setState(() => showing = !showing);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: widget.onFill,
          obscureText: widget.obscure && !showing,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            suffixIcon: widget.obscure
                ? InkWell(
                    onTap: toggle,
                    borderRadius: BorderRadius.circular(8),
                    child: Icon(
                      showing
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: kLightGrey,
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: kLightGrey,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blue[400]!,
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
