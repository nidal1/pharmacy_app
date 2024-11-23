import 'package:flutter/material.dart';

class TextBodySmall extends StatelessWidget {
  final String text;
  final TextStyle? preferredStyle;
  final TextAlign? textAlign;
  const TextBodySmall(
      {super.key, required this.text, this.preferredStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall?.merge(preferredStyle),
      textAlign: textAlign,
    );
  }
}
