import 'package:flutter/material.dart';

class TextTitleMedium extends StatelessWidget {
  final String text;
  final TextStyle? preferredStyle;
  final TextAlign? textAlign;
  const TextTitleMedium(
      {super.key, required this.text, this.preferredStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.merge(preferredStyle),
      textAlign: textAlign,
    );
  }
}
