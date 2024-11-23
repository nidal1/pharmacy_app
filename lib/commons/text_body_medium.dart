import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  final String text;
  final TextStyle? preferredStyle;
  final TextAlign? textAlign;
  const TextBodyMedium(
      {super.key, required this.text, this.preferredStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.merge(preferredStyle),
      textAlign: textAlign,
    );
  }
}
