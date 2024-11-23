import 'package:flutter/material.dart';

class TextTileLarge extends StatelessWidget {
  final String text;
  final TextStyle? preferredStyle;
  final TextAlign? textAlign;
  const TextTileLarge(
      {super.key, required this.text, this.preferredStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.merge(preferredStyle),
      textAlign: textAlign,
    );
  }
}
